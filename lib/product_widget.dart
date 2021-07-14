import 'package:assigment_provider/my_provider.dart';
import 'package:assigment_provider/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ProductWidget extends StatelessWidget {

  int id;
  ProductWidget( this.id);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              Provider.of<MyProvider>(context).products.where((element) => element.id==id).first.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Provider.of<MyProvider>(context, listen: false)
                        .addToFavourit( Provider.of<MyProvider>(context,listen: false).products.where((element) => element.id==id).first);
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black.withOpacity(0.4),
                    child: Icon(
                      Icons.favorite,
                      size: 40,
                      color:
                           Provider.of<MyProvider>(context).products.where((element) => element.id==id).first.isFavourite ? Colors.red : Colors.white,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.white54.withOpacity(0.4),
                    child: Text(
                    Provider.of<MyProvider>(context).products.where((element) => element.id==id).first.name,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:assigment_provider/my_provider.dart';
import 'package:assigment_provider/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(create: (context)=>MyProvider(),
    child: MaterialApp(
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Fashion Provider'),
          bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.home),),
            Tab(child: Icon(Icons.favorite),),
          ],)
        ),
        body:TabBarView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: Provider.of<MyProvider>(context).products.length,
                  itemBuilder: (context , index) {
                    return ProductWidget(Provider.of<MyProvider>(context).products[index].id);
                  }),
            ),
             Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: Provider.of<MyProvider>(context).products.where((element) => element.isFavourite).length,
                  itemBuilder: (context , index) {
                    return ProductWidget( Provider.of<MyProvider>(context).products.where((element) => element.isFavourite).toList()[index].id);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

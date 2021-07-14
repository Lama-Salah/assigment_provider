import 'package:assigment_provider/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MyProvider extends ChangeNotifier {
  List<ProductModel> favouriteProducts = [];
  setFavouriteProducts() {
    this.favouriteProducts =
        products.where((element) => element.isFavourite).toList();
    notifyListeners();
  }

  List<ProductModel> products = [
    ProductModel(1,
        name: 'Outfits',
        imageUrl:
            'https://images.unsplash.com/photo-1532453288672-3a27e9be9efd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80',
        price: 120),
    ProductModel(2,
        imageUrl:
            'https://images.unsplash.com/photo-1522315109300-78ce09fe6d37?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        name: 'Heels',
        price: 170),
    ProductModel(3,
        imageUrl:
            'https://images.unsplash.com/photo-1600417118520-b87c3656c0d8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fG1ha2V1cHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        name: 'MakeUp',
        price: 1000),
    ProductModel(4,
        imageUrl:
            'https://images.unsplash.com/photo-1535683577427-740aaac4ec25?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyZnVtZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        name: 'Perfumes',
        price: 90),
    ProductModel(5,
        imageUrl:
            'https://images.unsplash.com/photo-1547545317-5a4aa1fad6e8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njh8fGphY2tldHMlMjByZWR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        name: 'Jackets',
        price: 110),
    ProductModel(6,
        imageUrl:
            'https://images.unsplash.com/photo-1615210768832-159ca3912a05?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fGdsYXNzZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        name: 'Glasses',
        price: 60),
    ProductModel(7,
        imageUrl:
            'https://images.unsplash.com/photo-1522312346375-d1a52e2b99b3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d2F0Y2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        name: 'Watches',
        price: 80),
    ProductModel(8,
        imageUrl:
            'https://images.unsplash.com/photo-1608543837489-0fab463c925e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YWNjZXNzb3JpZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
        name: 'Accessories',
        price: 99),
  ];
  addToFavourit(ProductModel productModel) {
    int index = products.indexOf(productModel);
    // int index =
    //     products.indexOf(products.where((element) => element.id == id).first);
    products[index].isFavourite = !products[index].isFavourite;
    setFavouriteProducts();
  }

  String text = 'initial value';
  // ignore: non_constant_identifier_names
  ChangeTextValue(String value) {
    this.text = value;
    notifyListeners();
  }
}

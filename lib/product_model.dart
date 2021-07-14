import 'package:flutter/cupertino.dart';

class ProductModel {
  int id;
  String name;
  num price;
  String imageUrl;
  bool isFavourite;
  ProductModel(
    this.id,
      {
        @required this.name,
      @required this.imageUrl,
      @required this.price,
      this.isFavourite = false});
}

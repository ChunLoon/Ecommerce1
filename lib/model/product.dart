import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Product {
  final String name;
  final String image;
  final double price;
  Product({@required this.image, @required this.name, @required this.price});

   factory Product.fromDocument(QueryDocumentSnapshot doc) {
    return Product(
      price: doc["price"],
      name: doc["name"],
      image: doc["image"],
      
    );
  }
}

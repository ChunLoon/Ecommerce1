import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class CartModel {
  final String name;
  final String image;
  final double price;
  final int quentity;
  final String color;
  final String size;
  CartModel({
    @required this.price,
    @required this.name,
    @required this.image,
    @required this.size,
    @required this.color,
    @required this.quentity,
  });

   factory CartModel.fromDocument(QueryDocumentSnapshot doc) {
    return CartModel(
      price: doc["price"],
      name: doc["name"],
      image: doc["image"],
      size: doc["size"],
      color: doc["color"],
      quentity: doc["quentity"],
    );
  }
}

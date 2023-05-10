
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryIcon {
  final String image;
  CategoryIcon({@required this.image});

 factory CategoryIcon.fromDocument(QueryDocumentSnapshot doc) {
    return CategoryIcon(
      
      image: doc["image"],
     
    );
  }

}

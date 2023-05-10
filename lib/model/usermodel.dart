import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class UserModel {
  String userName,
      userEmail,
      userGender,
      userPhoneNumber,
      userImage,
      userAddress;
  UserModel(
      {@required this.userEmail,
      @required this.userImage,
      @required this.userAddress,
      @required this.userGender,
      @required this.userName,
      @required this.userPhoneNumber});

         factory  UserModel.fromDocument(QueryDocumentSnapshot doc) {
    return  UserModel(
      userEmail: doc["userEmail"],
      userImage: doc["userImage"],
      userAddress: doc["userAddress"],
      userGender: doc["userGender"],
     userName: doc["userName"],
      userPhoneNumber: doc["userPhoneNumber"],
    );
  }
}

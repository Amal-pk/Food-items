import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePageController extends ChangeNotifier {
  final List<String> items = [
    "All",
    "Spicy",
    "Non Spicy",
  ];
  final CollectionReference productList =
      FirebaseFirestore.instance.collection('product');
  // Future getItems() async {
  //   try {
  //     await productList.getDocment
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }
}

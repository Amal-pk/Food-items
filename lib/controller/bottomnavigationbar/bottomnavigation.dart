import 'package:flutter/material.dart';
import 'package:food_items/view/home_page/home_page.dart';
import 'package:food_items/view/profile/profile.dart';

class BottomNavigationController extends ChangeNotifier {
  final List<dynamic> screens = [
    const HomePage(),
    Profile(),
  ];
  int currentIndex = 0;

  int currentIndexSearch() {
    return currentIndex;
  }

  currentIndexResult(int index) {
    currentIndex = index;
    notifyListeners();
  }
}

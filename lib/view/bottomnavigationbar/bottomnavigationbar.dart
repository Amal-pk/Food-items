import 'package:flutter/material.dart';
import 'package:food_items/controller/bottomnavigationbar/bottomnavigation.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<BottomNavigationController>(context);
    int currentScreenIndex = controller.currentIndexSearch();
    return Scaffold(
      body: controller.screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        elevation: 0,
        currentIndex: currentScreenIndex,
        onTap: (value) => controller.currentIndexResult(value),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 0)
                  ? Icons.home_rounded
                  : Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 1)
                  ? Icons.photo_size_select_actual
                  : Icons.photo_size_select_actual_outlined,
            ),
            label: 'ADD',
          ),
        ],
      ),
    );
  }
}

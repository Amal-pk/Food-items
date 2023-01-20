import 'package:flutter/material.dart';
import 'package:food_items/controller/homepage/homepagecontroller.dart';
import 'package:provider/provider.dart';

class ItemsContainers extends StatelessWidget {
  const ItemsContainers({super.key, required this.item});
  final String item;
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomePageController>(context);
    return Container(
      height: 40,
      width: 70,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
          ),
        ],
      ),
      child: Text(item),
    );
  }
}

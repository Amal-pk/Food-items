import 'package:flutter/material.dart';
import 'package:food_items/controller/homepage/homepagecontroller.dart';
import 'package:food_items/view/home_page/widget/items.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Provider.of<HomePageController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "F O O D",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              List.generate(controller.items.length)
              ItemsContainers()],
          )
        ],
      ),
    );
  }
}

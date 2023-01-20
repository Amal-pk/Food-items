import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_items/controller/homepage/homepagecontroller.dart';
import 'package:food_items/view/home_page/widget/items.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomePageController>(context);
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
      body: StreamBuilder(
        stream: controller.productList.snapshots(),
        // .collection('product')
        // .doc(context.read<HomePageController>().userLogged)
        // .collection('item')
        // .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (!streamSnapshot.hasData) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          } else if (streamSnapshot.data!.docs.isEmpty) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          } else {
            return ListView(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: streamSnapshot.data!.docs.length,
                  itemBuilder: (BuildContext context, int index) {
                    final DocumentSnapshot items =
                        streamSnapshot.data!.docs[index];
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(16),
                          height: 175,
                          width: 200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 3,
                              )
                            ],
                          ),
                          child: Text(items['name']),
                        ),
                      ],
                    );
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

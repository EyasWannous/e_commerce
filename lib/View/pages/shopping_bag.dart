import 'package:flutter/material.dart';

class ShoppingBag extends StatelessWidget {
  const ShoppingBag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Shopping Bag",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.grey[400],
                    size: 150,
                  ),
                ),
                const Text(
                  'Your bag is empty',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  'Every item for every need',
                  style: TextStyle(fontSize: 10, color: Colors.grey[400]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

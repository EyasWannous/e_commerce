// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class EmptyShoppingBag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

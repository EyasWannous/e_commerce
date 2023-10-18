// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ActionsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.card_giftcard_sharp, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.qr_code_scanner_sharp, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings, color: Colors.black),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag_sharp, color: Colors.black),
        ),
      ],
    );
  }
}

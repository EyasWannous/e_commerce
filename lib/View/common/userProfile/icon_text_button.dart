// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class IconTextInButton extends StatelessWidget {
  final IconData iconD;
  final String text;
  const IconTextInButton({required this.iconD, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          Icon(iconD),
          const SizedBox(height: 5),
          Text(text),
        ],
      ),
    );
  }
}

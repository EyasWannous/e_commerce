// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NumberText extends StatelessWidget {
  final String num;
  final String text;
  const NumberText({required this.num, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(text),
      ],
    );
  }
}

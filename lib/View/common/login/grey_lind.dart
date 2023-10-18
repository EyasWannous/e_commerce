// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class GreyLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 1.0,
        width: 35.0,
        color: Colors.grey,
      ),
    );
  }
}

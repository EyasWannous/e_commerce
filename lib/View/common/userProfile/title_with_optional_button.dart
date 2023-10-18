// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TitleWithOptionalButton extends StatelessWidget {
  final String titleText;
  final bool activatedButton;
  final String buttonText;
  final IconData buttonIcon;
  final double paddingForTitle;
  const TitleWithOptionalButton({
    required this.titleText,
    required this.activatedButton,
    required this.buttonText,
    required this.buttonIcon,
    required this.paddingForTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(paddingForTitle),
          child: Text(
            titleText,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
        Expanded(child: Container(width: 1)),
        activatedButton
            ? TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      buttonText,
                      style: const TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Icon(
                      buttonIcon,
                      size: 13,
                      color: Colors.grey,
                    )
                  ],
                ),
              )
            : Container(width: 1),
      ],
    );
  }
}

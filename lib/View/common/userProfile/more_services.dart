// ignore_for_file: use_key_in_widget_constructors

import '../../common/userProfile/icon_text_button.dart';
import '../../common/userProfile/title_with_optional_button.dart';
import 'package:flutter/material.dart';

class MoreServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleWithOptionalButton(
          titleText: 'More Services',
          activatedButton: false,
          buttonText: 'buttonText',
          buttonIcon: Icons.abc,
          paddingForTitle: 8.0,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconTextInButton(
                iconD: Icons.support_agent_outlined, text: 'Support'),
            IconTextInButton(
                iconD: Icons.edit_note_sharp, text: 'Survery Center'),
            IconTextInButton(iconD: Icons.woman_sharp, text: 'Gals'),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

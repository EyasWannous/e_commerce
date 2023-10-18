// ignore_for_file: use_key_in_widget_constructors

import '../../common/userProfile/icon_text_button.dart';
import '../../common/userProfile/number_text.dart';
import '../../common/userProfile/title_with_optional_button.dart';
import 'package:flutter/material.dart';

class UpperNameWithIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWithOptionalButton(
          titleText: 'Hi,' + ' ',
          activatedButton: false,
          buttonText: 'buttonText',
          buttonIcon: Icons.abc,
          paddingForTitle: 17.0,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: const [
        //     Padding(
        //       padding: EdgeInsets.all(17.0),
        //       child: Text(
        //         'Hi,' + ' ',
        //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        //       ),
        //     ),
        //   ],
        // ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            NumberText(num: '1', text: 'Coupons'),
            NumberText(num: '0', text: 'Points'),
            IconTextInButton(iconD: Icons.wallet_sharp, text: 'Wallet'),
            IconTextInButton(
                iconD: Icons.card_giftcard_sharp, text: 'Gift Card'),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

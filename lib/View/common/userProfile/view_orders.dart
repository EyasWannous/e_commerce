// ignore_for_file: use_key_in_widget_constructors

import '../../common/userProfile/title_with_optional_button.dart';
import 'package:flutter/material.dart';
import 'icon_text_button.dart';

class ViewOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        const TitleWithOptionalButton(
          titleText: 'My Orders',
          activatedButton: true,
          buttonText: 'View All',
          buttonIcon: Icons.arrow_forward_ios_sharp,
          paddingForTitle: 8.0,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            IconTextInButton(iconD: Icons.credit_card_sharp, text: 'Unpaid'),
            IconTextInButton(
                iconD: Icons.account_balance_wallet_sharp, text: 'Processing'),
            IconTextInButton(
                iconD: Icons.local_shipping_outlined, text: 'Shipped'),
            IconTextInButton(iconD: Icons.rate_review_outlined, text: 'Review'),
            IconTextInButton(iconD: Icons.keyboard_return, text: 'Returns'),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

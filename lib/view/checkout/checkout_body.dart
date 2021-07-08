import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/checkout/components/pay_now_button.dart';
import 'package:pizza_eshop_flutterapp/view/checkout/components/order_container.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_label.dart';

class CheckoutBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final scaleHeigth = height / kMockupHeight;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomLabel(
              label: 'Checkout',
              style: Theme.of(context).textTheme.headline1!,
            ),
            PayNowButton(),
          ],
        ),
        addVerticalSpace(25 * scaleHeigth),
        OrderContainer(),
      ],
    );
  }
}

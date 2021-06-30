import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/checkout/components/pay_now_button.dart';
import 'package:pizza_eshop_flutterapp/view/checkout/components/order_container.dart';
import 'package:pizza_eshop_flutterapp/view/components/main_title.dart';

class CheckoutBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MainTitle(title: 'Checkout'),
            PayNowButton(),
          ],
        ),
        addVerticalSpace(25),
        OrderContainer(),
      ],
    );
  }
}

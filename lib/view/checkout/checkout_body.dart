import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/checkout/components/order_card_list.dart';
import 'package:pizza_eshop_flutterapp/view/components/main_title.dart';

class CheckoutBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MainTitle(title: 'Checkout'),
        addVerticalSpace(25),
        OrderCardList(),
      ],
    );
  }
}

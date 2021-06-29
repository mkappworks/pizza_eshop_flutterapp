import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/components/main_title.dart';
import 'package:pizza_eshop_flutterapp/view/components/sub_title.dart';
import 'package:pizza_eshop_flutterapp/view/order/components/food_container.dart';

class OrderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MainTitle(title: 'Food Delivery'),
        addVerticalSpace(5),
        SubTitle(subtitle: 'Ward Gateway Apt. 908'),
        addVerticalSpace(20),
        FoodContainer(),
      ],
    );
  }
}

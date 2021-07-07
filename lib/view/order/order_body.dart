import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_label.dart';
import 'package:pizza_eshop_flutterapp/view/order/components/food_container.dart';

class OrderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final scaleHeigth = height / kMockupHeight;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomLabel(
          label: 'Food Delivery',
          style: Theme.of(context).textTheme.headline1!,
        ),
        addVerticalSpace(5 * scaleHeigth),
        CustomLabel(
          label: 'Ward Gateway Apt. 908',
          style: Theme.of(context).textTheme.subtitle2!,
        ),
        //SubTitle(subtitle: 'Ward Gateway Apt. 908'),
        addVerticalSpace(20 * scaleHeigth),
        FoodContainer(),
      ],
    );
  }
}

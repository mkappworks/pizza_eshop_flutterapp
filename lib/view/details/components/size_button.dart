import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class SizeButton extends StatelessWidget {
  final FoodSize foodSize;

  final OrderController _orderController = Get.find();

  SizeButton({required this.foodSize});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          padding: EdgeInsets.all(8.0),
          width: 50,
          decoration: BoxDecoration(
            color: _orderController.getCurrentSelectedFoodSize.value != foodSize
                ? Colors.transparent
                : kSecondaryColor,
          ),
          child: Center(
            child: Text(foodSize.toFirstLetterUpperCaseOfSize(),
                style: Theme.of(context).textTheme.headline1),
          ),
        ));
  }
}

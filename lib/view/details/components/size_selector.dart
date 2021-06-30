import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/size_button.dart';

class SizeSelector extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _orderController.setCurrentSelectedOrderSize(),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: kSecondaryColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Row(
            children: [
              SizeButton(foodSize: FoodSize.medium),
              SizeButton(foodSize: FoodSize.large),
            ],
          ),
        ),
      ),
    );
  }
}

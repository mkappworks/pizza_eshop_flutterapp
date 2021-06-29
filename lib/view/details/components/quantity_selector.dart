import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/details/components/quantity_icon_button.dart';

class QuantitySelector extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: kSecondaryColor),
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              QuantityIconButton(
                onPress: () => _orderController
                    .setCurrentSelectedFoodQuantity(FoodQuantity.decrement),
                icon: Icons.remove,
              ),
              addHorizontalSpace(15.0),
              Obx(() => Text(
                  '${_orderController.getCurrentSelectedFoodQuantity}',
                  style: Theme.of(context).textTheme.headline1)),
              addHorizontalSpace(15.0),
              QuantityIconButton(
                onPress: () => _orderController
                    .setCurrentSelectedFoodQuantity(FoodQuantity.increment),
                icon: Icons.add,
              ),
            ],
          ),
        ));
  }
}

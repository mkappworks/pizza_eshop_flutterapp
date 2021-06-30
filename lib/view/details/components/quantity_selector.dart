import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';
import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_quantity_selector.dart';

class DetailsQuantitySelector extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomQuantitySelector(
        height: 60,
        decrementFunction: () => _orderController
            .setCurrentSelectedOrderQuantity(FoodQuantity.decrement),
        incrementFunction: () => _orderController
            .setCurrentSelectedOrderQuantity(FoodQuantity.increment),
        quantity: '${_orderController.getCurrentSelectedOrderQuantity}',
        textStyle: Theme.of(context).textTheme.headline1!,
      ),
    );
  }
}

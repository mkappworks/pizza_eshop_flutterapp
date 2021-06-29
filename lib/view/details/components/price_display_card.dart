import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

class PriceDisplayCard extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => Text('\$${_orderController.getCurrentSelectedFoodPrice}',
            style: Theme.of(context).textTheme.headline1),
      ),
    );
  }
}

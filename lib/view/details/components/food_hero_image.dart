import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/model/food.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class FoodHeroImage extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final scaleWidth = width / kMockupWidth;

    return Obx(
      () {
        Food _currentPizza = _orderController.getCurrentSelectedOrder[0];
        return Center(
          child: Hero(
            tag: _currentPizza.title,
            child: Image.asset(
              _currentPizza.image,
              width: size.width * 0.9 * scaleWidth,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}

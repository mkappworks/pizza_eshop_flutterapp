import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class SizeButton extends StatelessWidget {
  final FoodSize foodSize;

  final OrderController _orderController = Get.find();

  SizeButton({required this.foodSize});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final scaleHeigth = height / kMockupHeight;
    final scaleWidth = width / kMockupWidth;

    return Obx(() => Container(
          padding: EdgeInsets.symmetric(
              horizontal: 8.0 * scaleWidth, vertical: 8.0 * scaleHeigth),
          width: 50.0 * scaleWidth,
          decoration: BoxDecoration(
            color:
                _orderController.getCurrentSelectedOrderSize.value != foodSize
                    ? Colors.transparent
                    : kSecondaryColor,
          ),
          child: Center(
            child: Text(
              foodSize.toFirstLetterUpperCaseOfSize(),
              textScaleFactor: scaleWidth,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ));
  }
}

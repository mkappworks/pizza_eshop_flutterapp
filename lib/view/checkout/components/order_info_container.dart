import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class OrderInfoContainer extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.7),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Obx(
            () => Text(
              '${_orderController.getOrderListTotalQuantity} Items',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Obx(() => Text(
                '\$ ${_orderController.getOrderListTotalPrice}',
                style: Theme.of(context).textTheme.headline1,
              )),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/model/order.dart';

import 'package:pizza_eshop_flutterapp/view/checkout/components/order_card.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_info_container.dart';

class OrderCardList extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        RxList<Order> _orderList = _orderController.getOrderList;

        return CustomInfoContainer(widgetList: [
          ...List.generate(
            _orderList.length,
            (index) => OrderCard(
              order: _orderList[index],
            ),
          )
        ]);
      },
    );
  }
}

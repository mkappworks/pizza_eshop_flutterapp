import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/view/checkout/components/order_card_list.dart';
import 'package:pizza_eshop_flutterapp/view/checkout/components/order_info_container.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_info_container.dart';

class OrderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomInfoContainer(
      headerWidget: OrderInfoContainer(),
      widgetList: [OrderCardList()],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_quantity_selector.dart';

class DetailsQuantitySelector extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomQuantitySelector(
        height: 60,
        decrementFunction: () => _orderController
            .setCurrentSelectedFoodQuantity(FoodQuantity.decrement),
        incrementFunction: () => _orderController
            .setCurrentSelectedFoodQuantity(FoodQuantity.increment),
        quantity: '${_orderController.getCurrentSelectedFoodQuantity}',
      ),
    );

    // Container(
    //   height: 60,
    //   decoration: BoxDecoration(
    //     border: Border.all(color: kSecondaryColor),
    //     borderRadius: BorderRadius.circular(8.0),
    //   ),
    //   child: Row(
    //     children: [
    //       IconButton(
    //         onPressed: () => _orderController
    //             .setCurrentSelectedFoodQuantity(FoodQuantity.decrement),
    //         icon: Icon(Icons.remove),
    //         padding: EdgeInsets.symmetric(horizontal: 5),
    //       ),
    //       Obx(() => Text('${_orderController.getCurrentSelectedFoodQuantity}',
    //           style: Theme.of(context).textTheme.headline1)),
    //       IconButton(
    //         onPressed: () => _orderController
    //             .setCurrentSelectedFoodQuantity(FoodQuantity.increment),
    //         icon: Icon(Icons.add),
    //         padding: EdgeInsets.symmetric(horizontal: 5),
    //       )
    //     ],
    //   ),
    // );
  }
}

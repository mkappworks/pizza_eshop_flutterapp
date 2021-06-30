import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_icon_text_button.dart';

class AddToCartButton extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomIconTextButton(
      width: size.width * 0.8,
      height: size.height * 0.075,
      press: () {
        Get.snackbar(
          "PizzaShop",
          "Item Added to the Card",
          maxWidth: size.width * 0.7,
          snackPosition: SnackPosition.TOP,
          backgroundColor: kSecondaryColor.withOpacity(0.5),
          isDismissible: true,
          duration: Duration(milliseconds: 1200),
        );
        return _orderController.addOrderToOrderList();
      },
      label: Text(
        "Add To Cart",
        style: Theme.of(context)
            .textTheme
            .headline3
            ?.copyWith(color: kSecondaryTextColor),
      ),
      icon: Icon(
        Icons.shopping_bag,
        color: Colors.white,
      ),
      color: kPrimaryColor,
      borderRadius: 15.0,
    );
  }
}

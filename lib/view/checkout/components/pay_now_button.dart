import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_icon_text_button.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_label.dart';

class PayNowButton extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final scaleHeigth = height / kMockupHeight;
    final scaleWidth = width / kMockupWidth;

    return Obx(
      () {
        return _orderController.getOrderListTotalQuantity.value != 0
            ? CustomIconTextButton(
                width: size.width * 0.35 * scaleWidth,
                height: size.height * 0.05 * scaleHeigth,
                press: () {
                  Get.snackbar(
                    "PizzaShop",
                    "Payment Completed",
                    maxWidth: size.width * 0.7 * scaleWidth,
                    snackPosition: SnackPosition.TOP,
                    backgroundColor: kSecondaryColor.withOpacity(0.5),
                    isDismissible: true,
                    duration: Duration(milliseconds: 1200),
                  );
                },
                label: CustomLabel(
                  label: "Pay Now",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: kSecondaryTextColor),
                ),
                icon: Icon(
                  Icons.payment_rounded,
                  color: Colors.white,
                ),
                color: kPrimaryColor,
                borderRadius: 10.0,
              )
            : Container(
                width: size.width * 0.35 * scaleWidth,
                height: size.height * 0.05 * scaleHeigth,
              );
      },
    );
  }
}

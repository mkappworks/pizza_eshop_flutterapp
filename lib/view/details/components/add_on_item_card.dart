import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/model/add_on.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_label.dart';

class AddOnItemCard extends StatelessWidget {
  final OrderController _orderController = Get.find();

  final AddOn addOn;

  AddOnItemCard({
    required this.addOn,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final scaleHeigth = height / kMockupHeight;
    final scaleWidth = width / kMockupWidth;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0 * scaleWidth),
      child: InkWell(
        onTap: () => _orderController.setCurrentSelectedAddOn(addOn),
        child: Obx(
          () => Container(
            decoration: BoxDecoration(
              color: _orderController.getCurrentSelectedAddOn.contains(addOn)
                  ? kSecondaryColor.withOpacity(0.5)
                  : Colors.transparent,
              border: Border.all(color: kSecondaryColor),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10.0 * scaleWidth, vertical: 10.0 * scaleHeigth),
              child: Column(
                children: [
                  Container(
                    width: 75.0 * scaleWidth,
                    height: 50.0 * scaleHeigth,
                    child: Image.asset(addOn.image),
                  ),
                  addVerticalSpace(15.0 * scaleHeigth),
                  CustomLabel(
                    label: addOn.title,
                    style: Theme.of(context).textTheme.headline4!,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

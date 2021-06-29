import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/model/add_on.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

class AddOnItemCard extends StatelessWidget {
  final OrderController _orderController = Get.find();

  final AddOn addOn;

  AddOnItemCard({
    required this.addOn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
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
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: 75,
                    height: 50,
                    child: Image.asset(addOn.image),
                  ),
                  addVerticalSpace(15.0),
                  Text(
                    addOn.title,
                    style: Theme.of(context).textTheme.headline4,
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

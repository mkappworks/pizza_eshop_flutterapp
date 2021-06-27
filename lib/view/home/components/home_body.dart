import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/navigation/navigation_controller.dart';

import 'package:pizza_eshop_flutterapp/view/home/components/checkout_body.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/order_body.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/profile_body.dart';

class HomeBody extends StatelessWidget {
  final NavigationController _navigationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      switch (_navigationController.getCurrentBody.value) {
        case 0:
          return OrderBody();
        case 1:
          return CheckoutBody();
        case 2:
          return ProfileBody();
        default:
          return Container();
      }
    });
  }
}

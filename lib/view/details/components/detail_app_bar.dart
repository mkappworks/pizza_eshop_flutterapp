import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/navigation/navigation_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_app_bar.dart';
import 'package:pizza_eshop_flutterapp/view/home/home_screen.dart';

class DetailAppBar extends StatelessWidget {
  final NavigationController _navigationController = Get.find();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scaleWidth = width / kMockupWidth;

    return CustomAppBar(
      leadingWidget: Icon(
        Icons.home_rounded,
        size: 35 * scaleWidth,
      ),
      onLeadingWidgetTap: () => Get.back(),
      trailingWidget: Icon(
        Icons.shopping_bag_rounded,
        size: 35 * scaleWidth,
      ),
      onTrailingWidgetTap: () {
        _navigationController.setCurrentBody(1);
        return Get.offAllNamed(HomeScreen.routeName);
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_app_bar.dart';
import 'package:pizza_eshop_flutterapp/view/details/detail_screen.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingWidget: Icon(
        Icons.menu,
        size: 35,
      ),
      onLeadingWidgetTap: () => Get.toNamed(DetailScreen.routeName),
      trailingWidget: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: ClipOval(
          child: Icon(
            Icons.person,
            size: 35,
          ),
        ),
      ),
      onTrailingWidgetTap: () => Get.toNamed(DetailScreen.routeName),
    );
  }
}

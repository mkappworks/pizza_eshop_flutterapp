import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_app_bar.dart';

class DetailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingWidget: Icon(
        Icons.home_rounded,
        size: 35,
      ),
      onLeadingWidgetTap: () => Get.back(),
      trailingWidget: Icon(
        Icons.shopping_bag_rounded,
        size: 35,
      ),
      onTrailingWidgetTap: () => Get.back(),
    );
  }
}

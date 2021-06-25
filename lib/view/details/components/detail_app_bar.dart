import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_app_bar.dart';

class DetailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingWidget: Icon(
        Icons.home,
        size: 35,
      ),
      onLeadingWidgetTap: () => Get.back(),
      trailingWidget: Container(
        width: 35,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: ClipOval(),
      ),
      onTrailingWidgetTap: () => Get.back(),
    );
  }
}

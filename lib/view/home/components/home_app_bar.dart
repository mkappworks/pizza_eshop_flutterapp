import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_app_bar.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
        leadingWidget: SizedBox.shrink(),
        onLeadingWidgetTap: () => {},
        trailingWidget: SizedBox.shrink(),
        onTrailingWidgetTap: () => {});
  }
}

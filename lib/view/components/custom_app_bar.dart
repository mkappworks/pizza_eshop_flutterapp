import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class CustomAppBar extends StatelessWidget {
  final Widget leadingWidget;
  final Function onLeadingWidgetTap;
  final Widget trailingWidget;
  final Function onTrailingWidgetTap;

  CustomAppBar({
    required this.leadingWidget,
    required this.onLeadingWidgetTap,
    required this.trailingWidget,
    required this.onTrailingWidgetTap,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scaleWidth = width / kMockupWidth;

    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false, // hides leading widget
      flexibleSpace: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15 * scaleWidth),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onLeadingWidgetTap as void Function(),
                child: leadingWidget,
              ),
              RichText(
                textScaleFactor: scaleWidth,
                text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "$kPrimaryAppBarTitle",
                      style: TextStyle(color: kSecondaryColor),
                    ),
                    TextSpan(
                      text: "$kSecondaryAppBarTitle",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTrailingWidgetTap as void Function(),
                child: trailingWidget,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

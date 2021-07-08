import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class CustomLabel extends StatelessWidget {
  final String label;
  final TextStyle style;

  CustomLabel({
    required this.label,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scaleWidth = width / kMockupWidth;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0 * scaleWidth),
      child: Text(
        label,
        textScaleFactor: scaleWidth,
        style: style,
      ),
    );
  }
}

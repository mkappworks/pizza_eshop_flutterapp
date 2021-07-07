import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class CustomQuantitySelector extends StatelessWidget {
  final double height;
  final Function decrementFunction;
  final Function incrementFunction;
  final String quantity;
  final TextStyle textStyle;

  CustomQuantitySelector({
    required this.height,
    required this.decrementFunction,
    required this.incrementFunction,
    required this.quantity,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scaleWidth = width / kMockupWidth;

    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: kSecondaryColor),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: decrementFunction as void Function(),
            iconSize: 24.0 * scaleWidth,
            icon: Icon(Icons.remove),
            padding: EdgeInsets.symmetric(horizontal: 5.0 * scaleWidth),
          ),
          Text(
            quantity,
            textScaleFactor: scaleWidth,
            style: textStyle,
          ),
          IconButton(
            onPressed: incrementFunction as void Function(),
            iconSize: 24.0 * scaleWidth,
            icon: Icon(Icons.add),
            padding: EdgeInsets.symmetric(horizontal: 5.0 * scaleWidth),
          )
        ],
      ),
    );
  }
}

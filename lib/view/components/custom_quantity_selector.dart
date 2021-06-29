import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class CustomQuantitySelector extends StatelessWidget {
  final double height;
  final Function decrementFunction;
  final Function incrementFunction;
  final String quantity;

  CustomQuantitySelector({
    required this.height,
    required this.decrementFunction,
    required this.incrementFunction,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
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
            icon: Icon(Icons.remove),
            padding: EdgeInsets.symmetric(horizontal: 5),
          ),
          Text(quantity, style: Theme.of(context).textTheme.headline1),
          IconButton(
            onPressed: incrementFunction as void Function(),
            icon: Icon(Icons.add),
            padding: EdgeInsets.symmetric(horizontal: 5),
          )
        ],
      ),
    );
  }
}

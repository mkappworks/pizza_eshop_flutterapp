import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

class QuantitySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: kSecondaryColor),
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              QuantityIconButton(
                onPress: () {},
                icon: Icons.remove,
              ),
              addHorizontalSpace(15.0),
              Text('1', style: Theme.of(context).textTheme.headline1),
              addHorizontalSpace(15.0),
              QuantityIconButton(
                onPress: () {},
                icon: Icons.add,
              ),
            ],
          ),
        ));
  }
}

class QuantityIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  QuantityIconButton({
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress as void Function()?,
      child: Icon(icon),
    );
  }
}

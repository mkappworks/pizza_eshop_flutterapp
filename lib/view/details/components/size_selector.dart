import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class SizeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kSecondaryColor),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: Row(
          children: [
            SizeButton(
              onPress: () {},
              label: 'M',
              isSelected: true,
            ),
            SizeButton(
              onPress: () {},
              label: 'L',
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }
}

class SizeButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final bool isSelected;

  SizeButton({
    required this.label,
    required this.onPress,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress as void Function()?,
      child: Container(
        padding: EdgeInsets.all(8.0),
        width: 50,
        decoration: BoxDecoration(
          color: isSelected ? kSecondaryColor : Colors.transparent,
        ),
        child: Center(
          child: Text(label, style: Theme.of(context).textTheme.headline1),
        ),
      ),
    );
  }
}

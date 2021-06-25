import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

class AddOnItemCard extends StatelessWidget {
  final String label;
  final String image;
  final Function onPress;
  final bool isSelected;

  AddOnItemCard({
    required this.label,
    required this.image,
    required this.isSelected,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: onPress as void Function()?,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? kSecondaryColor.withOpacity(0.5)
                : Colors.transparent,
            border: Border.all(color: kSecondaryColor),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 75,
                  height: 50,
                  child: Image.asset(image),
                ),
                addVerticalSpace(15.0),
                Text(
                  label,
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomIconTextButton extends StatelessWidget {
  final double width;
  final double height;
  final Function press;
  final Widget label;
  final Widget icon;
  final Color color;
  final double borderRadius;

  CustomIconTextButton({
    required this.width,
    required this.height,
    required this.press,
    required this.label,
    required this.icon,
    required this.color,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton.icon(
        style: TextButton.styleFrom(
          minimumSize: Size(width, height),
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
        ),
        onPressed: press as void Function(),
        icon: icon,
        label: label,
      ),
    );
  }
}

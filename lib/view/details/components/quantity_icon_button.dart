
import 'package:flutter/material.dart';

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
      onTap: onPress as void Function(),
      child: Icon(icon),
    );
  }
}
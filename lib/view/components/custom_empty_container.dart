import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class CustomEmptyContainer extends StatelessWidget {
  final String label;

  CustomEmptyContainer({required this.label});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scaleWidth = width / kMockupWidth;

    return Center(
      child: Text(
        label,
        textScaleFactor: scaleWidth,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

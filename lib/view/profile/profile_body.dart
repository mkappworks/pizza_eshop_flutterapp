import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_label.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final scaleHeigth = height / kMockupHeight;
    final scaleWidth = width / kMockupWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomLabel(
          label: 'Profile',
          style: Theme.of(context).textTheme.headline1!,
        ),
        addVerticalSpace(25 * scaleHeigth),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0 * scaleWidth),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        )),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/view/details/components/item_image.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/item_info.dart';

import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

class DetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemImage(),
            addVerticalSpace(15),
            ItemInfo(),
            addVerticalSpace(5),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/sub_title.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/category_list.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/home_app_bar.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/main_title.dart';
import 'package:pizza_eshop_flutterapp/utilities/widget_functions.dart';

import 'item_image.dart';
import 'item_info.dart';

class DetailsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            addVerticalSpace(20),
            ItemImage(
              imgSrc: "assets/images/beyond-meat.png",
            ),
            addVerticalSpace(50),
            ItemInfo(),
            addVerticalSpace(5),
          ],
        ),
      ),
    );
  }
}

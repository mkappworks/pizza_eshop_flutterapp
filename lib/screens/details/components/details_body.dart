import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/models/pizza_map.dart';
import 'package:pizza_eshop_flutterapp/utilities/widget_functions.dart';

import 'details_app_bar.dart';
import 'item_image.dart';
import 'item_info.dart';

class DetailsBody extends StatelessWidget {
  final PizzaMap pizzaMap;

  DetailsBody({@required this.pizzaMap});

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
            DetailsAppBar(),
            addVerticalSpace(20),
            ItemImage(pizzaMap: pizzaMap),
            addVerticalSpace(15),
            ItemInfo(pizzaMap: pizzaMap),
            addVerticalSpace(5),
          ],
        ),
      ),
    );
  }
}

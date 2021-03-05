import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/models/pizza_map.dart';

import 'package:pizza_eshop_flutterapp/utilities/widget_functions.dart';

import 'sub_title.dart';
import 'category_list.dart';
import 'home_app_bar.dart';
import 'main_title.dart';

class HomeBody extends StatelessWidget {
  final List<PizzaMap> listPizzaMap;

  HomeBody({@required this.listPizzaMap});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            addVerticalSpace(10),
            MainTitle(title: 'Food Delivery'),
            addVerticalSpace(5),
            SubTitle(subtitle: 'Ward Gateway Apt. 908'),
            addVerticalSpace(5),
            CategoryList(),
          ],
        ),
      ),
    );
  }
}

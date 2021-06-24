import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/item_list.dart';

import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'sub_title.dart';
import 'category_list.dart';
import 'home_app_bar.dart';
import 'main_title.dart';

class HomeBody extends StatelessWidget {
  final List<Pizza>? pizzaList;

  HomeBody({required this.pizzaList});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeAppBar(),
          addVerticalSpace(10),
          MainTitle(title: 'Food Delivery'),
          addVerticalSpace(5),
          SubTitle(subtitle: 'Ward Gateway Apt. 908'),
          addVerticalSpace(5),
          CategoryList(),
          ItemList(pizzaList: pizzaList),
        ],
      ),
    );
  }
}

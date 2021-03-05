import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/models/pizza_map.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/item_list.dart';

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
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0, left: 20.0),
            child: Column(
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
          ItemList(listPizzaMap: listPizzaMap),
          // Container(
          //   color: const Color(0xff03dac6),
          //   child: Icon(Icons.add),
          // ),
        ],
      ),
    );
  }
}

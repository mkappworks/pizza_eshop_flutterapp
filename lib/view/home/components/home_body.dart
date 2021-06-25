import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/home/components/category_item_list.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/item_card_list.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/main_title.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/sub_title.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MainTitle(title: 'Food Delivery'),
        addVerticalSpace(5),
        SubTitle(subtitle: 'Ward Gateway Apt. 908'),
        addVerticalSpace(5),
        CategoryItemList(),
        ItemList(),
      ],
    );
  }
}

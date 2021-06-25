import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/controller/item/category_controller.dart';

import 'package:pizza_eshop_flutterapp/view/home/components/category_item.dart';

class CategoryItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            category: CategoryList.Pizza,
          ),
          CategoryItem(
            category: CategoryList.Chicken,
          ),
          CategoryItem(
            category: CategoryList.Beverages,
          ),
          CategoryItem(
            category: CategoryList.Desserts,
          ),
        ],
      ),
    );
  }
}

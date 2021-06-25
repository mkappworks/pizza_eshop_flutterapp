import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/item/category_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class CategoryItem extends StatelessWidget {
  final CategoryList category;

  final CategoryController _categoryController = Get.find();

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        // ignore: unrelated_type_equality_checks
        bool isSelected = _categoryController.getCurrentCategory == category;

        return GestureDetector(
          onTap: () => _categoryController.setCurrentCategory(category),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: <Widget>[
                Text(
                  category.toShortString(),
                  style: (isSelected)
                      ? TextStyle(
                          color: kPrimarySubtitleTextColor,
                          fontWeight: FontWeight.bold,
                        )
                      : TextStyle(fontSize: 12),
                ),
                if (isSelected)
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 3,
                    width: 22,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

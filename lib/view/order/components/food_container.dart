import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_empty_container.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_loading_container.dart';
import 'package:pizza_eshop_flutterapp/view/order/components/food_card_list.dart';

class FoodContainer extends StatelessWidget {
  final FoodController _foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    //depending on the ListStatus which can be loading or loaded or empty from FoodController the respective widgets are returned
    return Obx(() {
      switch (_foodController.getStatus.value) {
        case FoodListStatus.loading:
          return CustomLoadingContainer();
        case FoodListStatus.loaded:
          return FoodCardList();
        case FoodListStatus.empty:
          return CustomEmptyContainer(label: 'No Pizza Found!');
        default:
          return Container();
      }
    });
  }
}

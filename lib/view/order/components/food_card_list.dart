import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';

import 'package:pizza_eshop_flutterapp/model/food.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_info_container.dart';
import 'package:pizza_eshop_flutterapp/view/order/components/food_card.dart';

class FoodCardList extends StatelessWidget {
  final FoodController _foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        RxList<Food> _pizzaList = _foodController.getPizzaList;

        return CustomInfoContainer(
          key: Key("foodcardlist"),
          widgetList: [
            ...List.generate(
              _pizzaList.length,
              (index) => FoodCard(
                pizza: _pizzaList[index],
              ),
            )
          ],
        );
      },
    );
  }
}

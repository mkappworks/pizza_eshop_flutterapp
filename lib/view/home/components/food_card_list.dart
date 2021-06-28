import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';

import 'package:pizza_eshop_flutterapp/model/food.dart';

import 'package:pizza_eshop_flutterapp/view/home/components/food_card.dart';

class FoodCardList extends StatelessWidget {
  final FoodController _foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        RxList<Food> _pizzaList = _foodController.getPizzaList;

        return Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ...List.generate(
                    _pizzaList.length,
                    (index) => FoodCard(pizza: _pizzaList[index]),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

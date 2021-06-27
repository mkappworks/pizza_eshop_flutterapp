import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';
import 'package:pizza_eshop_flutterapp/model/food.dart';

class ItemImage extends StatelessWidget {
  final FoodController _foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(
      () {
        Food _currentPizza = _foodController.getCurrentSelectedPizza[0];
        return Center(
          child: Hero(
            tag: _currentPizza.title,
            child: Image.asset(
              _currentPizza.image,
              width: size.width * 0.9,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
}

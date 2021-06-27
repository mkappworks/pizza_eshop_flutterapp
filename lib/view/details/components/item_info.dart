import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';

import 'package:pizza_eshop_flutterapp/model/food.dart';

import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/details/components/add_on_item_list.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/order_button.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/quantity_size_price_selector_card.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/main_title.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/sub_title.dart';

class ItemInfo extends StatelessWidget {
  final FoodController _foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(() {
      Food _currentPizza = _foodController.getCurrentSelectedPizza[0];
      return Expanded(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MainTitle(title: _currentPizza.title),
              addVerticalSpace(10),
              SubTitle(
                  subtitle:
                      '${_currentPizza.mediumweight} | ${_currentPizza.mediumcalorie}'),
              addVerticalSpace(size.height * 0.02),
              QuantitySizePriceSelectorCard(pizza: _currentPizza),
              addVerticalSpace(size.height * 0.02),
              AddOnItemList(),
              addVerticalSpace(size.height * 0.02),
              OrderButton(
                size: size,
                press: () {},
              )
            ],
          ),
        ),
      );
    });
  }
}

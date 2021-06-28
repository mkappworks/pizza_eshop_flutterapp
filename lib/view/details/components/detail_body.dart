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

import 'package:pizza_eshop_flutterapp/view/details/components/food_hero_image.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_info_container.dart';

class DetailBody extends StatelessWidget {
  final FoodController _foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Food _currentPizza = _foodController.getCurrentSelectedPizza[0];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FoodHeroImage(),
        addVerticalSpace(10),
        CustomInfoContainer(
          widgetList: [
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
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/components/custom_label.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_info_container.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/add_on_item_list.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/add_to_card_button.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/quantity_size_price_selector_card.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/food_hero_image.dart';

class DetailBody extends StatelessWidget {
  final OrderController _orderController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;
    final scaleHeigth = height / kMockupHeight;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FoodHeroImage(),
        addVerticalSpace(size.height * 0.01 * scaleHeigth),
        CustomInfoContainer(
          widgetList: [
            addVerticalSpace(size.height * 0.025 * scaleHeigth),
            CustomLabel(
              label: _orderController.getCurrentSelectedOrder[0].title,
              style: Theme.of(context).textTheme.headline1!,
            ),
            addVerticalSpace(size.height * 0.01 * scaleHeigth),
            Obx(() => CustomLabel(
                  label: _orderController
                      .getCurrentSelectedOrderWeightCalorie.value,
                  style: Theme.of(context).textTheme.subtitle2!,
                )),
            addVerticalSpace(size.height * 0.02 * scaleHeigth),
            QuantitySizePriceSelectorCard(),
            addVerticalSpace(size.height * 0.02 * scaleHeigth),
            AddOnItemList(),
            addVerticalSpace(size.height * 0.035 * scaleHeigth),
            AddToCartButton(),
          ],
        ),
      ],
    );
  }
}

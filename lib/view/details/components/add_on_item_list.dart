import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/addon/add_on_controller.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/add_on_item_card.dart';

class AddOnItemList extends StatelessWidget {
  final AddOnController _addOnController = Get.find();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
                _addOnController.getAddOnList.length,
                (index) =>
                    AddOnItemCard(addOn: _addOnController.getAddOnList[index]))
          ],
        ),
      ),
    );
  }
}

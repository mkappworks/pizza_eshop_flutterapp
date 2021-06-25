import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  final FoodController _foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //depending on the ListStatus which can be loading or loaded or empty from FoodController the respective widgets are returned
    return Obx(() {
      switch (_foodController.getStatus.value) {
        case ListStatus.loading:
          return Center(child: CircularProgressIndicator());
        case ListStatus.loaded:
          RxList<Pizza> _pizzaList = _foodController.getUsersList;
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
                      (index) => ItemCard(
                        pizza: _pizzaList[index],
                        size: size,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        case ListStatus.empty:
          return Column(
            children: [
              Center(
                child: Text(
                  'No Pizza Found!',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          );
        default:
          return Container();
      }
    });
  }
}
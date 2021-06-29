import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/model/food.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

import 'package:pizza_eshop_flutterapp/view/details/detail_screen.dart';

class FoodCard extends StatelessWidget {
  final OrderController _orderController = Get.find();

  final Food pizza;

  FoodCard({required this.pizza});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          color: Colors.grey.withOpacity(0),
          child: Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                    tag: pizza.title,
                    child: Image.asset(pizza.image),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pizza.title,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      addVerticalSpace(5.0),
                      Text(
                        '${pizza.mediumweight} | ${pizza.mediumcalorie}',
                      ),
                      addVerticalSpace(20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 1, horizontal: 6),
                          child: Row(
                            children: [
                              Icon(Icons.av_timer_sharp),
                              Text(
                                ' - ${pizza.time}mins',
                                style: TextStyle(color: kPrimaryTextColor),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 60, top: 30),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$${pizza.mediumprice}',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        addVerticalSpace(35),
                        InkWell(
                          onTap: () {
                            _orderController.setCurrentSelectedFood(pizza);
                            Get.toNamed(DetailScreen.routeName);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border: Border.all(color: kSecondaryColor),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.add),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
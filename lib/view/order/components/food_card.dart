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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final scaleHeigth = height / kMockupHeight;
    final scaleWidth = width / kMockupWidth;

    return Column(
      children: [
        Container(
          height: 150 * scaleHeigth,
          child: Row(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10.0 * scaleWidth,
                    top: 8.0 * scaleHeigth,
                  ),
                  child: Hero(
                    tag: pizza.title,
                    child: Image.asset(
                      pizza.image,
                      scale: scaleWidth,
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 20.0 * scaleWidth, top: 30.0 * scaleHeigth),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pizza.title,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      addVerticalSpace(5.0 * scaleHeigth),
                      Text(
                        '${pizza.mediumweight} | ${pizza.mediumcalorie}',
                        textScaleFactor: scaleWidth,
                      ),
                      addVerticalSpace(20.0 * scaleHeigth),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 1.0 * scaleHeigth,
                              horizontal: 6.0 * scaleWidth),
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: scaleWidth,
                                child: Icon(Icons.av_timer_sharp),
                              ),
                              Text(
                                ' - ${pizza.time}mins',
                                textScaleFactor: scaleWidth,
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
                  padding: EdgeInsets.only(
                      left: 30.0 * scaleWidth, top: 30.0 * scaleHeigth),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$${pizza.mediumprice}',
                          textScaleFactor: scaleWidth,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        addVerticalSpace(35.0 * scaleHeigth),
                        InkWell(
                          onTap: () {
                            _orderController.setCurrentSelectedOrder(pizza);
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0 * scaleHeigth,
                                  horizontal: 5.0 * scaleWidth),
                              child: Transform.scale(
                                scale: scaleWidth,
                                child: Icon(Icons.add),
                              ),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:pizza_eshop_flutterapp/controller/navigation/navigation_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  final NavigationController _navigationController = Get.find();
  
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: kBackgroundColor,
      backgroundColor: Colors.white,
      buttonBackgroundColor: Colors.transparent,
      height: 60.0,
      animationDuration: Duration(milliseconds: 200),
      animationCurve: Curves.bounceInOut,
      items: <Widget>[
        Icon(
          Icons.home_rounded,
          color: Colors.black,
        ),
        Icon(
          Icons.shopping_cart_rounded,
          color: Colors.black,
        ),
        Icon(
          Icons.person,
          color: Colors.black,
        ),
      ],
      index: _navigationController.getCurrentBody(),
      onTap: (index) => _navigationController.setCurrentBody(index),
    );
  }
}

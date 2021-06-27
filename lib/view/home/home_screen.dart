import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

import 'package:pizza_eshop_flutterapp/view/home/components/home_app_bar.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/home_bottom_navigation_bar.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/order_body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: HomeAppBar(),
      ),
      body: OrderBody(),
      bottomNavigationBar: HomeBottomNavigationBar(),
    );
  }
}

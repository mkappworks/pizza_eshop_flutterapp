import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

import 'package:pizza_eshop_flutterapp/view/home/components/home_app_bar.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/home_body.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/home_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final scaleHeigth = height / kMockupHeight;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0 * scaleHeigth),
        child: HomeAppBar(),
      ),
      body: HomeBody(),
      bottomNavigationBar: HomeBottomNavigationBar(),
    );
  }
}

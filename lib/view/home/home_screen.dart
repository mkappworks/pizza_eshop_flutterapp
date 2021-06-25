import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/home_app_bar.dart';

import '../../utilities/constants.dart';
import 'components/home_body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: HomeAppBar()), // HomeAppBar(),
      body: HomeBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        onPressed: () {},
        icon: Icon(Icons.shopping_bag),
        label: Text('2 Items \$54'),
      ),
    );
  }
}

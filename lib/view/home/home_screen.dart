import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import 'components/home_body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
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

import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/details_app_bar.dart';

import '../../utilities/constants.dart';
import 'components/details_body.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";

  final Pizza? pizza;

  DetailScreen({this.pizza});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: DetailsAppBar(),
      ),
      body: DetailsBody(
        pizza: pizza!,
      ),
    );
  }
}

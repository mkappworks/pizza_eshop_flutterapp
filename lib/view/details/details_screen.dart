import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';

import '../../utilities/constants.dart';
import 'components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  final Pizza? pizza;

  DetailsScreen({this.pizza});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: DetailsBody(pizza: pizza,),
    );
  }
}

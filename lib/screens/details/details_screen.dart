import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/models/pizza_map.dart';

import '../../utilities/constants.dart';
import 'components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  final PizzaMap pizzaMap;

  DetailsScreen({@required this.pizzaMap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: DetailsBody(pizzaMap: pizzaMap,),
    );
  }
}

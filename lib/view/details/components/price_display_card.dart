import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/model/food.dart';

class PriceDisplayCard extends StatelessWidget {
  final Food pizza;

  PriceDisplayCard({required this.pizza});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('\$${pizza.mediumprice}',
          style: Theme.of(context).textTheme.headline1),
    );
  }
}

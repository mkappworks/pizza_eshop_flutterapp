import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';

class PriceDisplayCard extends StatelessWidget {
  PriceDisplayCard({
    required this.pizza,
  });

  final Pizza? pizza;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('\$${pizza!.mediumprice}',
          style: Theme.of(context).textTheme.headline1),
    );
  }
}

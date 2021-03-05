import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/models/pizza_map.dart';

class ItemImage extends StatelessWidget {
  final PizzaMap pizzaMap;

  ItemImage({this.pizzaMap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Hero(
        tag: pizzaMap.title,
        child: Image.asset(
          pizzaMap.image,
          height: size.height * 0.3,
          width: size.width * 0.8,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

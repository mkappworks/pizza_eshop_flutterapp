import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';

class ItemImage extends StatelessWidget {
  final Pizza? pizzaMap;

  ItemImage({this.pizzaMap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Hero(
        tag: pizzaMap!.title!,
        child: Image.asset(
          pizzaMap!.image!,
         // height: size.height * 0.3,
          width: size.width * 0.9,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

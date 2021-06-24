import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';

class ItemImage extends StatelessWidget {
  final Pizza? pizza;

  ItemImage({this.pizza});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Hero(
        tag: pizza!.title,
        child: Image.asset(
          pizza!.image,
          // height: size.height * 0.3,
          width: size.width * 0.9,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    Key key,
    this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Image.asset(
        imgSrc,
        height: size.height * 0.3,
        width: size.width * 0.8,
        fit: BoxFit.fill,
      ),
    );
  }
}

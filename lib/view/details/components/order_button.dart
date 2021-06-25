import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class OrderButton extends StatelessWidget {
  final Size size;
  final Function? press;

  OrderButton({
    required this.size,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press as void Function()?,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text("Add To Cart",
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          ?.copyWith(color: kSecondaryTextColor))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

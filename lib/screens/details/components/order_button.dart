import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key? key,
    required this.size,
    this.press,
  }) : super(key: key);

  final Size size;
  final Function? press;

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
                  SvgPicture.asset("assets/icons/bag.svg"),
                  SizedBox(width: 10),
                  Text(
                    "Add To Cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

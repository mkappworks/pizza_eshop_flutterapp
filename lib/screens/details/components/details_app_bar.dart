import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class DetailsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: kSecondaryColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme.headline6
                  .copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "$kPrimaryAppBarTitle",
                  style: TextStyle(color: kSecondaryColor),
                ),
                TextSpan(
                  text: "$kSecondaryAppBarTitle",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              width: 35,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: ClipOval(),
              // onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

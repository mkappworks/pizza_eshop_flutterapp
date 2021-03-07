import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () {},
          ),
          RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .title
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
          Container(
            width: 35,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: ClipOval(
              child: Image.asset('assets/images/person.png'),
            ),
            // onPressed: () {},
          ),
        ],
      ),
    );
  }
}

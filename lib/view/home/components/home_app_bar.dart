import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      automaticallyImplyLeading: false, // hides leading widget
      flexibleSpace: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.menu,
                  size: 35,
                ),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
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
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: ClipOval(
                    child: Icon(
                      Icons.person,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

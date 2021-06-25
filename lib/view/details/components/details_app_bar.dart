import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class DetailsAppBar extends StatelessWidget {
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
                onTap: () => Get.back(),
                child: Icon(
                  Icons.home,
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
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Container(
                  width: 35,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(),
                  // onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

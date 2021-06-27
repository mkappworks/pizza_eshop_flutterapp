import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/main_title.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MainTitle(title: 'Profile'),
        addVerticalSpace(25),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        )),
      ],
    );
  }
}

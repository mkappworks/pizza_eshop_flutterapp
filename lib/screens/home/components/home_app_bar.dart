import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                style: TextStyle(color: ksecondaryColor),
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
            child: ClipOval(
              child: Image.asset('assets/images/person.png'),
            ),
            // onPressed: () {},
          ),
        ),
      ],
    );
  }
}

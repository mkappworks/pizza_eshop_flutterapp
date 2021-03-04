import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/main_title.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/sub_title.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/widget_functions.dart';

import 'order_button.dart';
import 'title_price_rating.dart';

class ItemInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MainTitle(title: 'Margherita'),
            addVerticalSpace(10),
            SubTitle(subtitle: '540 gr . 3300 kcal'),
            addVerticalSpace(size.height * 0.05),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: ksecondaryColor)),
                    child: Row(
                      children: [
                        Icon(Icons.straighten_outlined),
                        Text('1', style: kTitleTextStyle),
                        Icon(Icons.add),
                      ],
                    )),
                Container(
                  child: Text('LKR1200.00', style: kTitleTextStyle),
                )
              ],
            ),
            OrderButton(
              size: size,
              press: () {},
            )
          ],
        ),
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}

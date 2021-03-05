import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/models/pizza_map.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/main_title.dart';
import 'package:pizza_eshop_flutterapp/screens/home/components/sub_title.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/widget_functions.dart';

import 'order_button.dart';
import 'title_price_rating.dart';

class ItemInfo extends StatelessWidget {
  final PizzaMap pizzaMap;

  ItemInfo({@required this.pizzaMap});

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
            MainTitle(title: pizzaMap.title),
            addVerticalSpace(10),
            SubTitle(
                subtitle:
                    '${pizzaMap.mediumWeight} | ${pizzaMap.mediumCalorie}'),
            addVerticalSpace(size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: kSecondaryColor),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          QuantityIconButton(
                            onPress: () {},
                            icon: Icons.remove,
                          ),
                          addHorizontalSpace(15.0),
                          Text('1', style: kLargeTitleTextStyle),
                          addHorizontalSpace(15.0),
                          QuantityIconButton(
                            onPress: () {},
                            icon: Icons.add,
                          ),
                        ],
                      ),
                    )),
                Container(
                  child: Text('\$${pizzaMap.mediumPrice}',
                      style: kLargeTitleTextStyle),
                )
              ],
            ),
            addVerticalSpace(size.height * 0.02),
            OrderButton(
              size: size,
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}

class QuantityIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  QuantityIconButton({
    @required this.icon,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Icon(icon),
    );
  }
}

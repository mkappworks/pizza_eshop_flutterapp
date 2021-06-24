import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/main_title.dart';
import 'package:pizza_eshop_flutterapp/view/home/components/sub_title.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/widget_functions.dart';

import 'order_button.dart';

class ItemInfo extends StatelessWidget {
  final Pizza? pizza;

  ItemInfo({required this.pizza});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 20),
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
            MainTitle(title: pizza!.title),
            addVerticalSpace(10),
            SubTitle(
                subtitle: '${pizza!.mediumWeight} | ${pizza!.mediumCalorie}'),
            addVerticalSpace(size.height * 0.02),
            QuantitySizePriceSelector(pizza: pizza),
            addVerticalSpace(size.height * 0.02),
            AddOnSelector(),
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

class AddOnSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AddOnItemCard(
              label: 'Cheese',
              image: 'assets/images/cheese.png',
              isSelected: true,
              onPress: () {},
            ),
            AddOnItemCard(
              label: 'Bacon',
              image: 'assets/images/bacon.png',
              isSelected: false,
              onPress: () {},
            ),
            AddOnItemCard(
              label: 'BellPepper',
              image: 'assets/images/bellpepper.png',
              isSelected: false,
              onPress: () {},
            ),
            AddOnItemCard(
              label: 'Chicken',
              image: 'assets/images/chicken.png',
              isSelected: true,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class AddOnItemCard extends StatelessWidget {
  final String label;
  final String image;
  final Function onPress;
  final bool isSelected;

  AddOnItemCard({
    required this.label,
    required this.image,
    required this.isSelected,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: onPress as void Function()?,
        child: Container(
          decoration: BoxDecoration(
              color: isSelected
                  ? kSecondaryColor.withOpacity(0.5)
                  : Colors.transparent,
              border: Border.all(color: kSecondaryColor),
              borderRadius: BorderRadius.circular(8.0)),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 75,
                  height: 50,
                  child: Image.asset(image),
                ),
                addVerticalSpace(15.0),
                Text(
                  label,
                  style: kSmallTitleTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuantitySizePriceSelector extends StatelessWidget {
  final Pizza? pizza;

  QuantitySizePriceSelector({
    required this.pizza,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuantitySelector(),
          SizeSelector(),
          PriceDisplayContainer(pizza: pizza)
        ],
      ),
    );
  }
}

class SizeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: kSecondaryColor),
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Row(
            children: [
              SizeButton(
                onPress: () {},
                label: 'M',
                isSelected: true,
              ),
              SizeButton(
                onPress: () {},
                label: 'L',
                isSelected: false,
              ),
            ],
          ),
        ));
  }
}

class PriceDisplayContainer extends StatelessWidget {
  PriceDisplayContainer({
    required this.pizza,
  });

  final Pizza? pizza;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('\$${pizza!.mediumPrice}', style: kLargeTitleTextStyle),
    );
  }
}

class QuantitySelector extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ));
  }
}

class SizeButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final bool isSelected;

  SizeButton({
    required this.label,
    required this.onPress,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress as void Function()?,
      child: Container(
          padding: EdgeInsets.all(8.0),
          width: 50,
          decoration: BoxDecoration(
              color: isSelected ? kSecondaryColor : Colors.transparent),
          child: Center(child: Text(label, style: kLargeTitleTextStyle))),
    );
  }
}

class QuantityIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  QuantityIconButton({
    required this.icon,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress as void Function()?,
      child: Icon(icon),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/add_on_item_card.dart';

class AddOnItemList extends StatelessWidget {
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

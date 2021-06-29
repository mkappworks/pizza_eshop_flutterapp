import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/view/details/components/price_display_card.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/quantity_selector.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/size_selector.dart';

class QuantitySizePriceSelectorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuantitySelector(),
          SizeSelector(),
          PriceDisplayCard(),
        ],
      ),
    );
  }
}

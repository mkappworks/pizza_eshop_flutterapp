import 'package:flutter/material.dart';

import 'package:pizza_eshop_flutterapp/view/details/components/detail_app_bar.dart';
import 'package:pizza_eshop_flutterapp/view/details/components/detail_body.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final scaleHeigth = height / kMockupHeight;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0 * scaleHeigth),
        child: DetailAppBar(),
      ),
      body: DetailBody(),
    );
  }
}

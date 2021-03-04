import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import 'components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: DetailsBody(),
    );
  }
}

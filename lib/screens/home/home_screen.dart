import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import 'components/home_body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: HomeBody(),
    );
  }
}

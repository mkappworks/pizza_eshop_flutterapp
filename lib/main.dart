import 'package:flutter/material.dart';

import 'utilities/constants.dart';

import 'view/home/home_screen.dart';
import 'utilities/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kSecondaryColor),
          bodyText2: TextStyle(color: kSecondaryColor),
        ),
      ),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';
import 'package:pizza_eshop_flutterapp/controller/item/category_controller.dart';

import 'utilities/constants.dart';

import 'view/home/home_screen.dart';
import 'utilities/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(FoodController());
  Get.put(CategoryController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kSecondaryColor,
        textTheme: kTextThemeDefault,
        fontFamily: "Roboto",
      ),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}

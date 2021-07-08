import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/addon/add_on_controller.dart';
import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';
import 'package:pizza_eshop_flutterapp/controller/category/category_controller.dart';
import 'package:pizza_eshop_flutterapp/controller/navigation/navigation_controller.dart';
import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/routes.dart';

import 'package:pizza_eshop_flutterapp/view/home/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(FoodController());
  Get.put(AddOnController());
  Get.put(OrderController());
  Get.put(CategoryController());
  Get.put(NavigationController());
  // Lock the entire app orientation to Portrait mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
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
      getPages: routes,
    );
  }
}

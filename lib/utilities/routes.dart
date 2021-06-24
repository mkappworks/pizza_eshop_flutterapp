import 'package:flutter/widgets.dart';
import 'package:pizza_eshop_flutterapp/view/details/details_screen.dart';
import 'package:pizza_eshop_flutterapp/view/home/home_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
};

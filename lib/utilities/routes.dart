import 'package:get/get.dart';
import 'package:pizza_eshop_flutterapp/view/details/detail_screen.dart';
import 'package:pizza_eshop_flutterapp/view/home/home_screen.dart';

// All GetPages routes will be available here
List<GetPage<dynamic>> routes = [
  GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
  GetPage(name: DetailScreen.routeName, page: () => DetailScreen())
];

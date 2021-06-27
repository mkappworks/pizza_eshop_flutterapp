import 'package:flutter/services.dart';

import 'package:pizza_eshop_flutterapp/model/food.dart';

class FoodServiceHelper {
  static final shared = FoodServiceHelper();

// Fetch pizza list from the database or in this example from local
  Future<List<Food>> fetchPizzaList() async {
    try {
      var jsonBody = await rootBundle.loadString('assets/sample.json');
      List<Food> _foodList = foodFromJson(jsonBody);
      return _foodList;
    } catch (error) {
      print('fetchPizzaList trycatch error $error');
      return <Food>[];
    }
  }
}

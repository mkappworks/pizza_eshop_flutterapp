import 'package:flutter/services.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';

class FoodServiceHelper {
  static final shared = FoodServiceHelper();

// Fetch pizza list from the database or in this example from local
  Future<List<Pizza>> fetchPizzaList() async {
    try {
      var jsonBody = await rootBundle.loadString('assets/sample.json');
      List<Pizza> _pizzaList = pizzaFromJson(jsonBody);

      return _pizzaList;
    } catch (error) {
      print('fetchPizzaList trycatch error $error');
      return <Pizza>[];
    }
  }
}

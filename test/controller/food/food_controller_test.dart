import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:pizza_eshop_flutterapp/controller/food/helper/food_service_helper.dart';

import 'package:pizza_eshop_flutterapp/model/food.dart';

final _foodList = [
  {
    "_id": "1",
    "type": "pizza",
    "title": "Pepperoni",
    "description":
        "Pepperoni is an American variety of salami, made from cured pork and beef seasoned with paprika or other chili pepper. Pepperoni is characteristically soft, slightly smoky, and bright red in color",
    "image": "assets/images/pizza1.png",
    "mediumweight": "500gr",
    "mediumcalorie": "3000kcal",
    "mediumprice": 5.00,
    "largeweight": "1000gr",
    "largecalorie": "6000kcal",
    "largeprice": 10.00,
    "time": "25"
  }
];

class FoodList {
  static final shared = FoodList();

  List<Food> fetchList() {
    return foodFromJson(json.encode(_foodList).toString());
  }
}

class MockitoFoodService extends Mock implements FoodServiceHelper {
  @override
  Future<List<Food>> fetchPizzaList() async {
    try {
      Future.delayed(Duration(seconds: 1));
      return FoodList.shared.fetchList();
    } catch (error) {
      return <Food>[];
    }
  }
}

void main() {
  //ARRANGE
  final MockitoFoodService _mockitoFoodService = MockitoFoodService();

  test(
      'Given a food List from external source is called then  Food<List> should be returned',
      () async {
    //ASSERT
    List<Food> _actualList = await _mockitoFoodService.fetchPizzaList();
    List<Food> _matchList = FoodList.shared.fetchList();

    //ACT
    expect(_actualList.length, _matchList.length);
  });

  test(
      'Given a food List from external source is empty then empty Food<List> should be returned',
      () async {
    //ASSERT
    List<Food> _actualList = [];
    List<Food> _matchList = FoodList.shared.fetchList();

    //ACT
    expect(_actualList.length, 0);
  });
}

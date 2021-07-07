import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

import 'package:pizza_eshop_flutterapp/controller/food/food_controller.dart';
import 'package:pizza_eshop_flutterapp/controller/navigation/navigation_controller.dart';

import 'package:pizza_eshop_flutterapp/main.dart';

void main() {
  //ARRANGE
  Get.put(FoodController());
  Get.put(NavigationController());

  testWidgets(
      'Given _pizzaList is empty when _setPizzaList is called then UI should have given Text("No Pizza Found!")',
      (WidgetTester tester) async {
    //ASSEMBLE
    await tester.pumpWidget(MyApp());

    final widget = find.text('No Pizza Found!');

    //ASSERT
    expect(widget, findsOneWidget);
  });
}

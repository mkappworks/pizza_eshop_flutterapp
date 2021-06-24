// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pizza_eshop_flutterapp/model/pizza.dart';

// class UserProgressModel with ChangeNotifier {
//   List<Pizza>? pizzaList;

//   Future<void> fetchMap() async {
//     final parsedJson = jsonDecode(await _getJson()) as List<dynamic>;
//     pizzaList = parsedJson.map<Pizza>((item) => Pizza.fromJson(item)).toList();
//   }

//   Future<String> _getJson() async {
//     return await rootBundle.loadString('assets/sample.json');
//   }
// }

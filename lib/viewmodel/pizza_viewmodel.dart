import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza_eshop_flutterapp/models/pizza_map.dart';

class UserProgressModel with ChangeNotifier {
  List<PizzaMap>? maps;

  Future<void> fetchMap() async {
    final parsedJson = jsonDecode(await _getJson()) as List<dynamic>;
    maps = parsedJson.map<PizzaMap>((item) => PizzaMap.fromJson(item)).toList();
  }

  Future<String> _getJson() async {
    return await rootBundle.loadString('assets/sample.json');
  }
}

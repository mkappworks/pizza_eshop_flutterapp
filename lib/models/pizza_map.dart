import 'package:flutter/material.dart';

class PizzaMap {
  final String title;
  final String description;
  final String image;
  final String mediumWeight;
  final String mediumCalorie;
  final String largeWeight;
  final String largeCalorie;

  PizzaMap({
    @required this.title,
    @required this.description,
    @required this.image,
    @required this.mediumWeight,
    @required this.mediumCalorie,
    @required this.largeWeight,
    @required this.largeCalorie,
  });

  factory PizzaMap.fromJson(Map<String, dynamic> json) {
    return PizzaMap(
      title: json['title'],
      description: json['description'],
      image: json['image'],
      mediumWeight: json['mediumWeight'],
      mediumCalorie: json['mediumCalorie'],
      largeWeight: json['largeWeight'],
      largeCalorie: json['largeCalorie'],
    );
  }
}

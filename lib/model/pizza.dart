import 'package:flutter/material.dart';

class Pizza {
  final String? title;
  final String? description;
  final String? image;
  final String? mediumWeight;
  final String? mediumCalorie;
  final double? mediumPrice;
  final String? largeWeight;
  final String? largeCalorie;
  final double? largePrice;

  Pizza({
    required this.title,
    required this.description,
    required this.image,
    required this.mediumWeight,
    required this.mediumCalorie,
    required this.mediumPrice,
    required this.largeWeight,
    required this.largeCalorie,
    required this.largePrice,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(
      title: json['title'],
      description: json['description'],
      image: json['image'],
      mediumWeight: json['mediumweight'],
      mediumCalorie: json['mediumcalorie'],
      mediumPrice: json['mediumprice'],
      largeWeight: json['largeweight'],
      largeCalorie: json['largecalorie'],
      largePrice: json['largeprice'],
    );
  }
}

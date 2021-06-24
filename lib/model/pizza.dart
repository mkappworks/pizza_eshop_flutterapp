import 'dart:convert';

List<Pizza> pizzaFromJson(String str) =>
    List<Pizza>.from(json.decode(str).map((x) => Pizza.fromJson(x)));

class Pizza {
  final String title;
  final String description;
  final String image;
  final String mediumweight;
  final String mediumcalorie;
  final double mediumprice;
  final String largeweight;
  final String largecalorie;
  final double largeprice;

  Pizza({
    required this.title,
    required this.description,
    required this.image,
    required this.mediumweight,
    required this.mediumcalorie,
    required this.mediumprice,
    required this.largeweight,
    required this.largecalorie,
    required this.largeprice,
  });

  factory Pizza.fromJson(Map<String, dynamic> json) => Pizza(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        mediumweight: json["mediumweight"],
        mediumcalorie: json["mediumcalorie"],
        mediumprice: json["mediumprice"].toDouble(),
        largeweight: json["largeweight"],
        largecalorie: json["largecalorie"],
        largeprice: json["largeprice"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
        "mediumweight": mediumweight,
        "mediumcalorie": mediumcalorie,
        "mediumprice": mediumprice,
        "largeweight": largeweight,
        "largecalorie": largecalorie,
        "largeprice": largeprice,
      };
}

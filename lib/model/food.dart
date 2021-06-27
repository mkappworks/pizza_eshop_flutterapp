import 'dart:convert';

List<Food> foodFromJson(String str) =>
    List<Food>.from(json.decode(str).map((item) => Food.fromJson(item)));

class Food {
  final String id;
  final String type;
  final String title;
  final String description;
  final String image;
  final String mediumweight;
  final String mediumcalorie;
  final double mediumprice;
  final String? largeweight;
  final String? largecalorie;
  final double? largeprice;
  final String? time;

  Food({
    required this.id,
    required this.type,
    required this.title,
    required this.description,
    required this.image,
    required this.mediumweight,
    required this.mediumcalorie,
    required this.mediumprice,
    this.largeweight,
    this.largecalorie,
    this.largeprice,
    this.time,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["_id"],
        type: json["type"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        mediumweight: json["mediumweight"],
        mediumcalorie: json["mediumcalorie"],
        mediumprice: json["mediumprice"].toDouble(),
        largeweight: json["largeweight"] == null ? null : json["largeweight"],
        largecalorie:
            json["largecalorie"] == null ? null : json["largecalorie"],
        largeprice:
            json["largeprice"] == null ? null : json["largeprice"].toDouble(),
        time: json["time"] == null ? null : json["time"],
      );
}

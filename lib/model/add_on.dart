import 'dart:convert';

List<AddOn> addOnFromJson(String str) => List<AddOn>.from(
    json.decode(str).map((item) => AddOn.fromJson(item)));

class AddOn {
  final String id;
  final String title;
  final String image;
  final double price;

  AddOn({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  });

  factory AddOn.fromJson(Map<String, dynamic> json) => AddOn(
        id: json["_id"],
        title: json["title"],
        image: json["image"],
        price: json["price"].toDouble(),
      );
}

import 'package:pizza_eshop_flutterapp/model/add_on.dart';
import 'package:pizza_eshop_flutterapp/model/food.dart';

class Order {
  final Food food;
  final String size;
  final List<AddOn> addOn;
  final int quantity;
  final double price;

  Order({
    required this.food,
    required this.size,
    required this.addOn,
    required this.quantity,
    required this.price,
  });
}

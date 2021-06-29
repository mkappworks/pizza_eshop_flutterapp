import 'package:pizza_eshop_flutterapp/model/add_on.dart';

enum OrderFunction { add, remove }
enum FoodSize { medium, large }
enum FoodQuantity { increment, decrement }
enum BodyList { Order, Checkout, Profile }
enum FoodListStatus { loading, loaded, empty }
enum AddOnListStatus { loading, loaded, empty }
enum CategoryList { Pizza, Chicken, Beverages, Desserts }

extension ParseFoodSizeToString on FoodSize {
  String toFirstLetterUpperCaseOfSize() {
    return this.toString().split('.').last.toUpperCase()[0];
  }
}

extension ParseBodyListToString on BodyList {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

extension ParseCategoryListToString on CategoryList {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

extension ParseAddOnListToString on List<AddOn> {
  String toCombinedString() {
    String combinedTitle = "";
    this.forEach((addOn) {
      combinedTitle += '${addOn.title} ';
    });

    return combinedTitle;
  }
}

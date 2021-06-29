enum OrderFunction { add, remove }
enum FoodSize { medium, large }
enum FoodQuantity { increment, decrement }
enum BodyList { Order, Checkout, Profile }
enum FoodListStatus { loading, loaded, empty }
enum AddOnListStatus { loading, loaded, empty }
enum CategoryList { Pizza, Chicken, Beverages, Desserts }

extension ParseStringFoodSize  on FoodSize {
  String toFirstLetterUpperCaseOfSize() {
    return this.toString().split('.').last.toUpperCase()[0];
  }
}

extension ParseStringBodyList  on BodyList {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

extension ParseStringCategoryList on CategoryList {
  String toShortString() {
    return this.toString().split('.').last;
  }
}


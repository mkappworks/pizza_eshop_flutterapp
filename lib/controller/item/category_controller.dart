import 'package:get/get.dart';

enum CategoryList { Pizza, Chicken, Beverages, Desserts }

extension ParseToString on CategoryList {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

//Getx controller to track the currently select category in the homescreen
class CategoryController extends GetxController {
  Rx<CategoryList> _currentCategory = CategoryList.Pizza.obs;

  //GetX Controller function to set currently selected category
  void setCurrentCategory(CategoryList category) {
    _currentCategory.value = category;

    update();
  }

  //get the _currentCategory
  Rx<CategoryList> get getCurrentCategory => _currentCategory;
}

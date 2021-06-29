import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

//Getx controller to track the currently select category in the HomeScreen()
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

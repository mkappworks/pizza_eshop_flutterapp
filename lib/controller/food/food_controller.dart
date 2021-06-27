import 'package:get/get.dart';
import 'package:pizza_eshop_flutterapp/controller/food/helper/food_service_helper.dart';
import 'package:pizza_eshop_flutterapp/model/food.dart';

enum ListStatus { loading, loaded, empty }

class FoodController extends GetxController {
  Rx<ListStatus> _status = ListStatus.loading.obs;
  RxList<Food> _pizzaList = <Food>[].obs;
 
  RxList<Food> _currentSelectedPizza = <Food>[].obs;

  Future<void> onInit() async => await _setPizzaList();

  //GetX Controller function to get the all pizza data from the database
  Future<void> _setPizzaList() async {
    _status.value = ListStatus.loading;
    _pizzaList.assignAll(await FoodServiceHelper.shared.fetchPizzaList());

    (_pizzaList.isEmpty)
        ? _status.value = ListStatus.empty
        : _status.value = ListStatus.loaded;

    update();
  }

  void setCurrentSelectedPizza(Food pizza) {
    _currentSelectedPizza.assign(pizza);
    update();
  }

  void setCurrentSelectedPizzaToInitial(Food pizza) {
    _currentSelectedPizza.clear();
    update();
  }

  //gets the ListStatus
  Rx<ListStatus> get getStatus => _status;
  //get the all pizza list db
  RxList<Food> get getPizzaList => _pizzaList;
//get the current selected pizza from the HomeScreen UI
  RxList<Food> get getCurrentSelectedPizza => _currentSelectedPizza;
}

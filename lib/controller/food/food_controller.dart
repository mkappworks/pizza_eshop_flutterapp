import 'package:get/get.dart';
import 'package:pizza_eshop_flutterapp/controller/food/helper/food_service_helper.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';

enum ListStatus { loading, loaded, empty }

class FoodController extends GetxController {
  Rx<ListStatus> _status = ListStatus.loading.obs;
  RxList<Pizza> _pizzaList = <Pizza>[].obs;
  RxList<Pizza> _currentSelectedPizza = <Pizza>[].obs;

  // @override
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

  void setCurrentSelectedPizza(Pizza pizza) {
    _currentSelectedPizza.assign(pizza);
    update();
  }

  void setCurrentSelectedPizzaToInitial(Pizza pizza) {
    _currentSelectedPizza.clear();
    update();
  }

  //gets the ListStatus
  Rx<ListStatus> get getStatus => _status;
  //get the all pizza list db
  RxList<Pizza> get getUsersList => _pizzaList;

  RxList<Pizza> get getCurrentSelectedPizza => _currentSelectedPizza;
}

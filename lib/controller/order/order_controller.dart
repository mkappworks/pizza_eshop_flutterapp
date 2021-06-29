import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/model/add_on.dart';
import 'package:pizza_eshop_flutterapp/model/food.dart';

import 'package:pizza_eshop_flutterapp/model/order.dart';

class OrderController extends GetxController {
  RxList<Order> _orderList = <Order>[].obs;
  RxList<AddOn> _currentSelectedAddOn = <AddOn>[].obs;
  RxList<Food> _currentSelectedFood = <Food>[].obs;
  RxInt _currentSelectedFoodQuantity = 1.obs;
  Rx<FoodSize> _currentSelectedFoodSize = FoodSize.medium.obs;
  RxDouble _currentSelectedFoodPrice = 0.0.obs;
  RxString _currentSelectedFoodWeightCalorie = "".obs;

  //GetX Controller function to add a order to the _orderList
  void setAddOrderToList() {
    Order order = Order(
      food: _currentSelectedFood[0],
      size: _currentSelectedFoodSize.value.toFirstLetterUpperCaseOfSize(),
      addOn: [..._currentSelectedAddOn],
      quantity: _currentSelectedFoodQuantity.value,
      price: _currentSelectedFoodPrice.value,
    );

    List<Order> _tempList = [..._orderList, order];

    _orderList.assignAll(_tempList);

    update();
  }

  void setRemoveOrderFromList(Order order) {
    List<Order> _tempList = [..._orderList];

    _tempList.remove(order);

    _orderList.assignAll(_tempList);

    update();
  }

  void setCurrentSelectedFood(Food food) {
    _setToInitial();
    _currentSelectedFood.assign(food);

    _setCurrentSelectedFoodWeightCalorie(food);

    _setCurrentSelectedFoodPrice();

    update();
  }

  void setCurrentSelectedAddOn(AddOn addOn) {
    List<AddOn> _tempList = [..._currentSelectedAddOn];

    (_tempList.contains(addOn))
        ? _tempList.remove(addOn)
        : _tempList.add(addOn);

    _currentSelectedAddOn.assignAll(_tempList);

    _setCurrentSelectedFoodPrice();

    update();
  }

  void setCurrentSelectedFoodQuantity(FoodQuantity foodQuantity) {
    if (foodQuantity == FoodQuantity.decrement &&
        _currentSelectedFoodQuantity.value == 1) return;

    if (foodQuantity == FoodQuantity.increment &&
        _currentSelectedFoodQuantity.value == 99) return;

    foodQuantity == FoodQuantity.increment
        ? _currentSelectedFoodQuantity++
        : _currentSelectedFoodQuantity--;

    _setCurrentSelectedFoodPrice();

    update();
  }

  void setCurrentSelectedFoodSize() {
    _currentSelectedFoodSize.value =
        _currentSelectedFoodSize.value == FoodSize.medium
            ? FoodSize.large
            : FoodSize.medium;
    _setCurrentSelectedFoodWeightCalorie(_currentSelectedFood[0]);
    _setCurrentSelectedFoodPrice();

    update();
  }

  void _setCurrentSelectedFoodPrice() {
    double? _foodPrice = (_currentSelectedFoodSize.value == FoodSize.medium)
        ? _currentSelectedFood[0].mediumprice
        : _currentSelectedFood[0].largeprice;

    double _addOnPrice = 0;

    _currentSelectedAddOn.forEach((addOn) => _addOnPrice += addOn.price);

    _currentSelectedFoodPrice.value =
        (_foodPrice! + _addOnPrice) * _currentSelectedFoodQuantity.value;

    update();
  }

  void _setCurrentSelectedFoodWeightCalorie(Food currentFood) {
    if (_currentSelectedFoodSize.value == FoodSize.large) {
      _currentSelectedFoodWeightCalorie.value =
          '${currentFood.largeweight} | ${currentFood.largecalorie}';
    } else {
      _currentSelectedFoodWeightCalorie.value =
          '${currentFood.mediumweight} | ${currentFood.mediumcalorie}';
    }

    update();
  }

  void _setToInitial() {
    _currentSelectedFood.clear();
    _currentSelectedAddOn.clear();
    _currentSelectedFoodQuantity.value = 1;
    _currentSelectedFoodSize.value = FoodSize.medium;
    _currentSelectedFoodPrice.value = 0.0;
    _currentSelectedFoodWeightCalorie.value = "";

    update();
  }

  //get the all pizza list db
  RxList<Order> get getOrderList => _orderList;
  //get the current selected pizza from the HomeScreen UI
  RxList<Food> get getCurrentSelectedFood => _currentSelectedFood;
  //get the current selected addOnList
  RxList<AddOn> get getCurrentSelectedAddOn => _currentSelectedAddOn;

  RxInt get getCurrentSelectedFoodQuantity => _currentSelectedFoodQuantity;

  Rx<FoodSize> get getCurrentSelectedFoodSize => _currentSelectedFoodSize;

  RxDouble get getCurrentSelectedFoodPrice => _currentSelectedFoodPrice;

  RxString get getCurrentSelectedFoodWeightCalorie =>
      _currentSelectedFoodWeightCalorie;
}

import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/model/add_on.dart';
import 'package:pizza_eshop_flutterapp/model/food.dart';
import 'package:pizza_eshop_flutterapp/model/order.dart';

class OrderController extends GetxController {
  RxList<Order> _orderList = <Order>[].obs;
  RxList<AddOn> _currentSelectedAddOn = <AddOn>[].obs;
  RxList<Food> _currentSelectedOrder = <Food>[].obs;
  RxInt _currentSelectedOrderQuantity = 1.obs;
  Rx<FoodSize> _currentSelectedOrderSize = FoodSize.medium.obs;
  RxDouble _currentSelectedOrderUnitPrice = 0.0.obs;
  RxString _currentSelectedFoOrderWeightCalorie = "".obs;
  RxDouble _orderListTotalPrice = 0.0.obs;
  RxInt _orderListTotalQuantity = 0.obs;

  //GetX Controller function to add a order to the _orderList
  void addOrderToOrderList() {
    Order order = Order(
      food: _currentSelectedOrder[0],
      size: _currentSelectedOrderSize.value.toFirstLetterUpperCaseOfSize(),
      addOn: [..._currentSelectedAddOn],
      quantity: _currentSelectedOrderQuantity.value,
      price: _currentSelectedOrderUnitPrice.value,
    );

    List<Order> _tempList = [..._orderList, order];

    _orderList.assignAll(_tempList);

    _setOrderListTotalPriceQuantity();

    update();
  }

  void removeOrderFromOrderList(Order order) {
    List<Order> _tempList = [..._orderList];

    _tempList.remove(order);

    _orderList.assignAll(_tempList);

    _setOrderListTotalPriceQuantity();

    update();
  }

  void updateOrderFromOrderList(Order order, FoodQuantity foodQuantity) {
    List<Order> _tempList = [..._orderList];
    int _indexOfOrderInOrderList = _tempList.indexOf(order);

    int _previousQuantity = _tempList[_indexOfOrderInOrderList].quantity;

    if (foodQuantity == FoodQuantity.decrement && _previousQuantity == 1)
      return;

    if (foodQuantity == FoodQuantity.increment && _previousQuantity == 99)
      return;

    int _newQuantity = _previousQuantity;
    (foodQuantity == FoodQuantity.increment) ? _newQuantity++ : _newQuantity--;

    Order _updatedOrder = Order(
      food: order.food,
      size: order.size,
      addOn: order.addOn,
      quantity: _newQuantity,
      price: order.price,
    );

    _tempList[_indexOfOrderInOrderList] = _updatedOrder;

    _orderList.assignAll(_tempList);

    _setOrderListTotalPriceQuantity();

    update();
  }

  void setCurrentSelectedOrder(Food food) {
    _initialiseProperties();
    _currentSelectedOrder.assign(food);

    _setCurrentSelectedOrderWeightCalorie(food);

    _setCurrentSelectedOrderUnitPrice();

    update();
  }

  void setCurrentSelectedAddOn(AddOn addOn) {
    List<AddOn> _tempList = [..._currentSelectedAddOn];

    (_tempList.contains(addOn))
        ? _tempList.remove(addOn)
        : _tempList.add(addOn);

    _currentSelectedAddOn.assignAll(_tempList);

    _setCurrentSelectedOrderUnitPrice();

    update();
  }

  void setCurrentSelectedOrderQuantity(FoodQuantity foodQuantity) {
    if (foodQuantity == FoodQuantity.decrement &&
        _currentSelectedOrderQuantity.value == 1) return;

    if (foodQuantity == FoodQuantity.increment &&
        _currentSelectedOrderQuantity.value == 99) return;

    foodQuantity == FoodQuantity.increment
        ? _currentSelectedOrderQuantity++
        : _currentSelectedOrderQuantity--;

    _setCurrentSelectedOrderUnitPrice();

    update();
  }

  void setCurrentSelectedOrderSize() {
    _currentSelectedOrderSize.value =
        _currentSelectedOrderSize.value == FoodSize.medium
            ? FoodSize.large
            : FoodSize.medium;
    _setCurrentSelectedOrderWeightCalorie(_currentSelectedOrder[0]);
    _setCurrentSelectedOrderUnitPrice();

    update();
  }

  void _setCurrentSelectedOrderUnitPrice() {
    double? _foodPrice = (_currentSelectedOrderSize.value == FoodSize.medium)
        ? _currentSelectedOrder[0].mediumprice
        : _currentSelectedOrder[0].largeprice;

    double _addOnPrice = 0;

    _currentSelectedAddOn.forEach((addOn) => _addOnPrice += addOn.price);

    _currentSelectedOrderUnitPrice.value = _foodPrice! + _addOnPrice;

    update();
  }

  void _setCurrentSelectedOrderWeightCalorie(Food currentFood) =>
      _currentSelectedFoOrderWeightCalorie.value =
          (_currentSelectedOrderSize.value == FoodSize.large)
              ? '${currentFood.largeweight} | ${currentFood.largecalorie}'
              : '${currentFood.mediumweight} | ${currentFood.mediumcalorie}';

  void _setOrderListTotalPriceQuantity() {
    List<Order> _tempList = [..._orderList];
    int _totalQuantity = 0;
    double _totalPrice = 0.0;

    _tempList.forEach((order) {
      _totalQuantity += order.quantity;
      _totalPrice += order.price * order.quantity;
    });

    _orderListTotalQuantity.value = _totalQuantity;
    _orderListTotalPrice.value = _totalPrice;

    update();
  }

  void _initialiseProperties() {
    _currentSelectedOrder.clear();
    _currentSelectedAddOn.clear();
    _currentSelectedOrderQuantity.value = 1;
    _currentSelectedOrderSize.value = FoodSize.medium;
    _currentSelectedOrderUnitPrice.value = 0.0;
    _currentSelectedFoOrderWeightCalorie.value = "";

    update();
  }

  //get the all pizza list db
  RxList<Order> get getOrderList => _orderList;
  //get the current selected pizza from the HomeScreen UI
  RxList<Food> get getCurrentSelectedOrder => _currentSelectedOrder;
  //get the current selected addOnList
  RxList<AddOn> get getCurrentSelectedAddOn => _currentSelectedAddOn;

  RxInt get getCurrentSelectedOrderQuantity => _currentSelectedOrderQuantity;

  Rx<FoodSize> get getCurrentSelectedOrderSize => _currentSelectedOrderSize;

  RxDouble get getCurrentSelectedOrderUnitPrice =>
      _currentSelectedOrderUnitPrice;

  RxString get getCurrentSelectedOrderWeightCalorie =>
      _currentSelectedFoOrderWeightCalorie;

  RxDouble get getOrderListTotalPrice => _orderListTotalPrice;

  RxInt get getOrderListTotalQuantity => _orderListTotalQuantity;
}

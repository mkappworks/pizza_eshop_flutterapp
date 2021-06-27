import 'package:get/get.dart';

enum BodyList { Order, Checkout, Profile }

extension ParseToString on BodyList {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

//Getx controller to track the currently select body in the HomeScreen()
class NavigationController extends GetxController {
  RxInt _currentBodyIndex = 0.obs;

  //GetX Controller function to set currently selected body
  void setCurrentBody(int index) {
    _currentBodyIndex.value = index;
    update();
  }

  //get the _currentBody
  RxInt get getCurrentBody => _currentBodyIndex;
}

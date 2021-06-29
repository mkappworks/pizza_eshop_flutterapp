import 'package:get/get.dart';

import 'package:pizza_eshop_flutterapp/controller/addon/helper/add_on_service_helper.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/model/add_on.dart';

class AddOnController extends GetxController {
  Rx<AddOnListStatus> _status = AddOnListStatus.loading.obs;
  RxList<AddOn> _addOnList = <AddOn>[].obs;

  Future<void> onInit() async {
    super.onInit();
    await _setAddOnList();
  }

  //GetX Controller function to get the all add on data from the database
  Future<void> _setAddOnList() async {
    _status.value = AddOnListStatus.loading;
    _addOnList.assignAll(await AddOnServiceHelper.shared.fetchAddOnList());

    (_addOnList.isEmpty)
        ? _status.value = AddOnListStatus.empty
        : _status.value = AddOnListStatus.loaded;

    update();
  }

  //gets the ListStatus
  Rx<AddOnListStatus> get getStatus => _status;
  //get the all pizza list db
  RxList<AddOn> get getAddOnList => _addOnList;
}

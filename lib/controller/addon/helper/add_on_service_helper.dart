import 'package:flutter/services.dart';

import 'package:pizza_eshop_flutterapp/model/add_on.dart';

class AddOnServiceHelper {
  static final shared = AddOnServiceHelper();

// Fetch add on list from the database or in this example from local
  Future<List<AddOn>> fetchAddOnList() async {
    try {
      var jsonBody =
          await rootBundle.loadString('assets/add_on_test_data.json');
      List<AddOn> _addOnList = addOnFromJson(jsonBody);
      return _addOnList;
    } catch (error) {
      print('fetchAddOnList trycatch error $error');
      return <AddOn>[];
    }
  }
}

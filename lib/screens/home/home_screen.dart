import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/viewmodel/pizza_viewmodel.dart';

import '../../utilities/constants.dart';
import 'components/home_body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final model = UserProgressModel();

  @override
  void initState() {
    super.initState();
    _loadMap();
  }

  void _loadMap() async {
    await model.fetchMap();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: HomeBody(listPizzaMap: model.maps),
    );
  }
}

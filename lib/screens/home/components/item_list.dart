import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/models/pizza_map.dart';
import 'package:pizza_eshop_flutterapp/screens/details/details_screen.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/widget_functions.dart';

class ItemList extends StatelessWidget {
  final List<PizzaMap> listPizzaMap;

  ItemList({@required this.listPizzaMap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ...List.generate(
                  listPizzaMap.length,
                  (index) => ItemDetailsCard(
                        pizzaMap: listPizzaMap[index],
                        size: size,
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

class ItemDetailsCard extends StatelessWidget {
  final PizzaMap pizzaMap;
  final Size size;

  ItemDetailsCard({
    @required this.pizzaMap,
    @required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          color: Colors.grey.withOpacity(0),
          child: Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                    tag: pizzaMap.title,
                    child: Image.asset(pizzaMap.image),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pizzaMap.title,
                        style: kSmallTitleTextStyle,
                      ),
                      addVerticalSpace(5.0),
                      Text(
                        '${pizzaMap.mediumWeight} | ${pizzaMap.mediumCalorie}',
                      ),
                      addVerticalSpace(20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 1, horizontal: 6),
                          child: Row(
                            children: [
                              Icon(Icons.av_timer_sharp),
                              Text(
                                ' - 25mins',
                                style: TextStyle(color: kTextDarkColor),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60, top: 30),
                child: Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$${pizzaMap.mediumPrice}',
                          style: kSmallTitleTextStyle,
                        ),
                        addVerticalSpace(35),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsScreen(pizzaMap: pizzaMap)),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border: Border.all(color: kSecondaryColor),
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.add),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}

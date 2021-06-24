import 'package:flutter/material.dart';
import 'package:pizza_eshop_flutterapp/model/pizza.dart';
import 'package:pizza_eshop_flutterapp/view/details/details_screen.dart';
import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

class ItemList extends StatelessWidget {
  final List<Pizza>? pizzaList;

  ItemList({required this.pizzaList});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
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
          child: pizzaList != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ...List.generate(
                        pizzaList!.length,
                        (index) => ItemDetailsCard(
                              pizza: pizzaList![index],
                              size: size,
                            ))
                  ],
                )
              : SizedBox(),
        ),
      ),
    );
  }
}

class ItemDetailsCard extends StatelessWidget {
  final Pizza pizza;
  final Size size;

  ItemDetailsCard({
    required this.pizza,
    required this.size,
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
                    tag: pizza.title!,
                    child: Image.asset(pizza.image!),
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
                        pizza.title!,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      addVerticalSpace(5.0),
                      Text(
                        '${pizza.mediumWeight} | ${pizza.mediumCalorie}',
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
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 60, top: 30),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$${pizza.mediumPrice}',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        addVerticalSpace(35),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailsScreen(pizza: pizza)),
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

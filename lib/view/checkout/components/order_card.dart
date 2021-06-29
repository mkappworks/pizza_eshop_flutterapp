import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/model/order.dart';

import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_quantity_selector.dart';

class OrderCard extends StatelessWidget {
  final OrderController _orderController = Get.find();
  final Order order;

  OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => _orderController.setRemoveOrderFromList(order),
        ),
      ],
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade400),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.food.title,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        addVerticalSpace(5.0),
                        Text(order.size),
                        addVerticalSpace(5.0),
                        Text(order.addOn.toCombinedString()),
                        addVerticalSpace(5.0),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$${order.price}',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        addVerticalSpace(10),
                        CustomQuantitySelector(
                          height: 40,
                          decrementFunction: () => {},
                          incrementFunction: () => {},
                          quantity: '${order.quantity}',
                          textStyle: Theme.of(context).textTheme.headline3!,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

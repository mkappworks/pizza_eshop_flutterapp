import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/model/order.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';

class OrderCard extends StatelessWidget {
  final OrderController _orderController = Get.find();
  final Order order;

  OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      actions: <Widget>[
        IconSlideAction(
          caption: 'Remove',
          color: kBackgroundColor,
          icon: Icons.remove,
          onTap: () => {
            _orderController.updateOrderFromOrderList(order, FoodQuantity.decrement)
          },
          closeOnTap: false,
        ),
        IconSlideAction(
          caption: 'Add',
          color: kBackgroundColor,
          icon: Icons.add,
          onTap: () => {
            _orderController.updateOrderFromOrderList(order, FoodQuantity.increment)
          },
          closeOnTap: false,
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => _orderController.removeOrderFromOrderList(order),
        ),
      ],
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade400),
          ),
        ),
        child: Row(
          children: [
            addHorizontalSpace(15),
            Image.asset(
              order.food.image,
              width: 100,
            ),
            addHorizontalSpace(20),
            Text('${order.quantity}     x',
                style: Theme.of(context).textTheme.headline4),
            addHorizontalSpace(20),
            Container(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    order.food.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  addVerticalSpace(5.0),
                  Text(
                    'Size-${order.size}',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  addVerticalSpace(10.0),
                  Wrap(
                    children: [
                      ...List.generate(
                        order.addOn.length,
                        (index) => Text(
                          '${order.addOn[index].title} ',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              '\$${order.price * order.quantity}',
              style: Theme.of(context).textTheme.headline2,
            ),
          ],
        ),
      ),
    );
  }
}

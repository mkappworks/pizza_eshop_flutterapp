import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:pizza_eshop_flutterapp/controller/order/order_controller.dart';

import 'package:pizza_eshop_flutterapp/extensions/extensions.dart';

import 'package:pizza_eshop_flutterapp/model/order.dart';

import 'package:pizza_eshop_flutterapp/utilities/constants.dart';
import 'package:pizza_eshop_flutterapp/utilities/sized_box_functions.dart';
import 'package:pizza_eshop_flutterapp/view/components/custom_label.dart';

class OrderCard extends StatelessWidget {
  final OrderController _orderController = Get.find();
  final Order order;

  OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final scaleHeigth = height / kMockupHeight;
    final scaleWidth = width / kMockupWidth;

    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      actions: <Widget>[
        IconSlideAction(
          caption: 'Remove',
          color: kBackgroundColor,
          icon: Icons.remove,
          onTap: () => {
            _orderController.updateOrderFromOrderList(
                order, FoodQuantity.decrement)
          },
          closeOnTap: false,
        ),
        IconSlideAction(
          caption: 'Add',
          color: kBackgroundColor,
          icon: Icons.add,
          onTap: () => {
            _orderController.updateOrderFromOrderList(
                order, FoodQuantity.increment)
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
        padding: EdgeInsets.symmetric(vertical: 10.0 * scaleHeigth),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade400),
          ),
        ),
        child: Row(
          children: [
            addHorizontalSpace(10 * scaleWidth),
            Image.asset(
              order.food.image,
              width: 100 * scaleWidth,
            ),
            CustomLabel(
              label: '${order.quantity}     x',
              style: Theme.of(context).textTheme.headline4!,
            ),
            Container(
              width: 150 * scaleWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomLabel(
                    label: order.food.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  addVerticalSpace(5.0 * scaleHeigth),
                  CustomLabel(
                    label: 'Size-${order.size}',
                    style: Theme.of(context).textTheme.subtitle1!,
                  ),
                  addVerticalSpace(10.0 * scaleHeigth),
                  Wrap(
                    children: [
                      ...List.generate(
                        order.addOn.length,
                        (index) => CustomLabel(
                          label: '${order.addOn[index].title} ',
                          style: Theme.of(context).textTheme.subtitle1!,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomLabel(
              label: '\$${order.price * order.quantity}',
              style: Theme.of(context).textTheme.headline2!,
            ),
          ],
        ),
      ),
    );
  }
}

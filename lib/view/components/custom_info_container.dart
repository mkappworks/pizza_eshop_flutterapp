import 'package:flutter/material.dart';

class CustomInfoContainer extends StatelessWidget {
  final Key? key;
  final Widget? headerWidget;
  final List<Widget> widgetList;

  CustomInfoContainer({required this.widgetList, this.headerWidget, this.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            headerWidget ?? SizedBox.shrink(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgetList,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

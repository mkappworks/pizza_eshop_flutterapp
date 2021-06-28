import 'package:flutter/material.dart';

class CustomEmptyContainer extends StatelessWidget {
  final String label;

  CustomEmptyContainer({required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  MainTitle({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}

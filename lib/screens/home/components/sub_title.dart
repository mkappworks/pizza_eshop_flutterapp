import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String subtitle;

  SubTitle({@required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        subtitle,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}

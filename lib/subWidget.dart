import 'package:flutter/material.dart';

class subWidget extends StatelessWidget {
  int day = 20;
  String place = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "welcome $day  day to flutter web at $place",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.0,
        ),
      ),
    );
  }
}

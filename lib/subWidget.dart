import 'package:flutter/material.dart';

class subWidget extends StatelessWidget {
  int day = 20;
  String place = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "welcome $day  day to flutter web at $place",
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textScaleFactor: 1.0,
          ),
        ),
      ),
    );
  }
}

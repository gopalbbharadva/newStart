import 'package:flutter/material.dart';

class subWidget extends StatelessWidget {
  int day = 20;
  int day2 = 30;
  String place = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("welcome $day2  day to flutter web at $place"),
      ),
    );
  }
}

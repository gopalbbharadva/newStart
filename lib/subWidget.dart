import 'package:flutter/material.dart';
import 'package:newstart/sideDrawer.dart';

class subWidget extends StatelessWidget {
  int day = 20;
  String place = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DrawerWidget(),
    );
  }
}

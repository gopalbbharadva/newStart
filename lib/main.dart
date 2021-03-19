import 'package:flutter/material.dart';
import 'package:newstart/subWidget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homePage(),
  ));
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 2 flutter"),
        centerTitle: true,
      ),
      body: subWidget(),
    );
  }
}

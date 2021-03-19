import 'package:flutter/material.dart';
import 'package:newstart/sampleRoute.dart';
import 'package:newstart/subWidget.dart';

void main() {
  runApp(
    homePage(),
  );
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: "/",
      routes: {
        "/": (context) => subWidget(),
        "/sampleroute": (context) => sampleRoute()
      },
    );
  }
}

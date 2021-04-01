import 'package:flutter/material.dart';
import 'package:newstart/sampleRoute.dart';
import 'package:newstart/subWidget.dart';
import 'package:newstart/utils/routes.dart';

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
      theme: Theme.of(context),
      initialRoute: routes.homepage,
      routes: {
        routes.homepage: (context) => subWidget(),
        routes.loginpage: (context) => sampleRoute()
      },
    );
  }
}

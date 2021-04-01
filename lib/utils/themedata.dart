import 'package:flutter/material.dart';

class Themes {
  static ThemeData th(BuildContext context) => ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
            elevation: 0.0,
            color: Colors.red,
            iconTheme: IconThemeData(color: Colors.amber),
            textTheme: Theme.of(context).textTheme),
      );
}

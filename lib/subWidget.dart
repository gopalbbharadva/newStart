import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:newstart/ItemWidget.dart';
import 'package:newstart/models/items.dart';
import 'package:newstart/sideDrawer.dart';

class subWidget extends StatefulWidget {
  @override
  _subWidgetState createState() => _subWidgetState();
}

class _subWidgetState extends State<subWidget> {
  int day = 20;

  String place = "Codepur";

  final dummyList = List.generate(12, (index) => Product.items[0]);

  @override
  void initState() {
    super.initState();

    jsonData();
  }

  void jsonData() async {
    var catalogData = await rootBundle.loadString("Asset/Data/catalog.json");
    var jsonData = jsonDecode(catalogData);
    var products = jsonData['products'];
    print(products);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget screen"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(currentItem: dummyList[0]);
        },
      ),
      drawer: DrawerWidget(),
    );
  }
}

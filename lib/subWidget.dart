import 'package:flutter/material.dart';
import 'package:newstart/ItemWidget.dart';
import 'package:newstart/models/items.dart';
import 'package:newstart/sideDrawer.dart';

class subWidget extends StatelessWidget {
  int day = 20;
  String place = "Codepur";

  final dummyList = List.generate(12, (index) => Product.items[0]);
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

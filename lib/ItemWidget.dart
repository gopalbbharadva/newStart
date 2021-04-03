import 'package:flutter/material.dart';
import 'package:newstart/models/items.dart';

class ItemWidget extends StatelessWidget {
  final Items currentItem;
  
  const ItemWidget({Key key, this.currentItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(currentItem.image),
        title: Text(currentItem.name),
        subtitle: Text(currentItem.desc),
        trailing: Text(
          "\$${currentItem.price}",
          style: TextStyle(color: Colors.greenAccent, fontSize: 20),
        ),
      ),
    );
  }
}

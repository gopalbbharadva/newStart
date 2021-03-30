import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  String imageurl = "https://picsum.photos/250?image=9";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          height: 20,
          child: DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage(imageurl),
                ),
                SizedBox(height: 10),
                Text("Gopal Bharadva"),
                SizedBox(height: 10),
                Text("vickybharadva2001@gmail.com"),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.home,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.4,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "Email",
                    textScaleFactor: 1.4,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.contact_phone_rounded,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    "Contact No",
                    textScaleFactor: 1.4,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer Widget"),
        centerTitle: true,
      ),
    );
  }
}

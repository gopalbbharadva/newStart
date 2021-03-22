import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newstart/utils/routes.dart';

class sampleRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "Asset/images/sign_in.png",
                height: 300,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Welcome to Signin",
            style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter username:", labelText: "Username"),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter password:", labelText: "Password"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              shadowColor: Colors.amberAccent,
              elevation: 5.0,
              backgroundColor: Colors.blueGrey,
              minimumSize: Size(120, 40),
            ),
            onPressed: () {
              Navigator.pushNamed(context, routes.homepage);
            },
            child: Text("Sign in"),
          )
        ],
      ),
    );
  }
}

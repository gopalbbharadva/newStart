import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            onPressed: () {
              print("button pressed");
            },
            child: Text("sign in"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newstart/utils/routes.dart';

class sampleRoute extends StatefulWidget {
  @override
  _sampleRouteState createState() => _sampleRouteState();
}

class _sampleRouteState extends State<sampleRoute> {
  String name = "";

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
              "Welcome " + name,
              style:
                  GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
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
            InkWell(
              onTap: () async {
                setState(
                  () {
                    flag = true;
                  },
                );
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, routes.homepage);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 800),
                alignment: Alignment.center,
                width: flag ? 60 : 130,
                height: 40,
                child: flag
                    ? Icon(
                        Icons.login,
                        color: Colors.white,
                      )
                    : Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(flag ? 50 : 8),
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

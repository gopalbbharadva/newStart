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

  final _formKey = GlobalKey<FormState>();

  TextEditingController uname = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  void formSubmit(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(
        () {
          flag = true;
        },
      );
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, routes.homepage);
      setState(() {
        flag = false;
      });
    }
  }

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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: uname,
                      validator: (value) {
                        if (value.isEmpty)
                          return "Please enter username!";
                        else
                          return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          hintText: "Enter username:", labelText: "Username"),
                    ),
                    TextFormField(
                      controller: pass,
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty)
                          return "Please enter password!!";
                        else
                          return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Enter password:", labelText: "Password"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => formSubmit(context),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
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

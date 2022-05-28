import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myproject/Screens/Verify.dart';
import 'package:myproject/Screens/login.dart';

class Forgot extends StatefulWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: (context) => Login()));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20,
            )),
        title: Text(
          "Forgot Password",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Reset your Password",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 60.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonTheme(
                height: 40,
                buttonColor: Colors.blue.shade800,
                child: RaisedButton(
                  highlightElevation: 20.0,
                  elevation: 10.0,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Verify()));
                  },
                  child: Text('Reset Password',
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                ),
              ),
            ]),
      ),
    );
  }
}

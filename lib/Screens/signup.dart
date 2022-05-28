import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myproject/Screens/Verify.dart';
import 'package:myproject/Screens/home.dart';
import 'package:myproject/Screens/login.dart';
import 'package:myproject/Screens/welcome.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => Welcome()));
          },
          icon: Icon(
            Icons.arrow_back,
          ),
          iconSize: 30,
        ),
        backgroundColor: Colors.blueAccent,
        title: Text(
          "SignIn",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 40,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 55,
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "First Name",
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
            const TextField(
              decoration: InputDecoration(
                labelText: "Last Name",
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
            const TextField(
              decoration: InputDecoration(
                labelText: "Contact Number",
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
            const TextField(
              decoration: InputDecoration(
                labelText: "Address",
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
            const TextField(
              decoration: InputDecoration(
                labelText: "Email Address",
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
            const TextField(
              decoration: InputDecoration(
                labelText: "Username",
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
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
              width: 25,
            ),
            Column(
              children: <Widget>[
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
                    child: Text('Sign Up',
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text('Already have an account? LogIn',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

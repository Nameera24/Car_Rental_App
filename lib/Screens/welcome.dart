import 'package:flutter/material.dart';
import 'package:myproject/Screens/login.dart';
import 'package:myproject/Screens/signup.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                color: Color.fromARGB(255, 11, 85, 128),
              ),
              Positioned(
                top: 200,
                left: 150,
                bottom: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 65,
                  ),
                ),
              ),
              Positioned(
                  top: 19,
                  left: 3,
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 40,
                  )),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Center(
              child: Text(
            "Welcome Guest",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 80,
          ),
          RaisedButton(
            highlightElevation: 20.0,
            elevation: 10.0,
            color: Colors.blueAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text('Log In',
                style: TextStyle(fontSize: 25, color: Colors.black)),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            highlightElevation: 20.0,
            elevation: 10.0,
            color: Colors.blueAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SignUp()));
            },
            child: Text('Sign Up',
                style: TextStyle(fontSize: 25, color: Colors.black)),
          ),
        ],
      ),
    );
  }
}

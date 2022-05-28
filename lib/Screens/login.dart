import 'package:flutter/material.dart';
import 'package:myproject/Screens/Verify.dart';
import 'package:myproject/Screens/forgotpassword.dart';
import 'package:myproject/Screens/home.dart';
import 'package:myproject/Screens/signup.dart';
import 'package:myproject/Screens/welcome.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          "LogIn",
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
                  radius: 70,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 85,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60.0),
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
            const SizedBox(height: 20.0),
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
                  buttonColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Text('Log In',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SignUp()));
                        },
                        child: Text('Create New Account!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ))),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Or",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Forgot()));
                        },
                        child: Text('Forgot Password?',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ))),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myproject/Screens/forgotpassword.dart';
import 'package:myproject/Screens/home.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: (context) => Forgot()));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20,
            )),
        title: Text(
          "Verify Your Account",
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
                    "Please Enter your PhoneNumber",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 60.0),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 7,
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Home()));
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

import 'package:flutter/material.dart';
import 'package:myproject/Screens/Categories.dart';
import 'dart:io';
import 'package:myproject/Screens/Packages.dart';
import 'package:myproject/Screens/Payments.dart';
import 'package:myproject/Screens/Transaction.dart';
import 'package:myproject/Screens/Verify.dart';
import 'package:myproject/Screens/feedback.dart';
import 'package:myproject/Screens/forgotpassword.dart';
import 'package:myproject/Screens/home.dart';
import 'package:myproject/Screens/login.dart';
import 'package:myproject/Screens/signup.dart';
import 'package:myproject/Screens/splash.dart';
import 'package:myproject/Screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Welcome(),
      
    );
  }
}


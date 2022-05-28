import 'package:flutter/material.dart';
import 'package:myproject/Screens/Categories.dart';

import 'Payments.dart';
import 'Transaction.dart';
import 'feedback.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Available Cars",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Nameera Rashid",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white)),
                accountEmail: Text("nameerarashid9@gmail.com",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(""),
                )),
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              ),
              title: Text("Feedback",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black)),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FB()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              ),
              title: Text("Transaction",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black)),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Transaction()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                size: 20,
                color: Colors.black,
              ),
              title: Text("Payment",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black)),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Payments()));
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.04,
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  // color: color1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(9.0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Seden",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("250"))),
                      ],
                    ),
                    Card(
                        child: Image.asset(
                      'assets/pic.jpg',
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ))
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  // color: color1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(9.0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Seden",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("250"))),
                      ],
                    ),
                    Card(
                        child: Image.asset(
                      'assets/pic1.jpg',
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                    ))
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

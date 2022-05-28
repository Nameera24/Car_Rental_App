import 'package:flutter/material.dart';

import 'home.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Transaction Successful"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 20,
          ),
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 400,
                width: 500,
                color: Color.fromARGB(255, 216, 217, 224),
              ),
              Positioned(
                top: 50,
                left: 150,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 50,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              Positioned(
                  top: 160,
                  left: 60,
                  child: Text(
                    "Money Transfer is Successful",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  bottom: 50,
                  left: 20,
                  child: Text(
                    "Recipient's Name",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  bottom: 30,
                  left: 20,
                  child: Text(
                    "Today at 6:00 am",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )),
              Positioned(
                  bottom: 50,
                  right: 30,
                  child: Text(
                    "-\$645,00",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          SizedBox(
            height: 100,
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
              child: Text('Back to home',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

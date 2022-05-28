import 'package:flutter/material.dart';
import 'package:myproject/Screens/home.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context)
                .pop(MaterialPageRoute(builder: (context) => Home()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Pay with CreditCard"),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(13),
                color: Colors.white,
                height: 50,
                width: 500,
              ),
              Container(
                margin: EdgeInsets.all(13),
                color: Colors.white,
                height: 50,
                width: 500,
              ),
              Positioned(
                left: 0,
                top: 9,
                child: IconButton(
                  icon: Icon(
                    Icons.radio_button_on_rounded,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
              ),
              Positioned(
                  left: 50,
                  top: 23,
                  child: Text(
                    "VESA Card",
                    style: TextStyle(fontSize: 16),
                  )),
              Positioned(
                  right: 3,
                  top: 23,
                  child: Text(
                    "2564-8558-XXXX",
                    style: TextStyle(fontSize: 16),
                  )),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(13),
                    color: Colors.white,
                    height: 50,
                    width: 500,
                  ),
                  Positioned(
                    left: 0,
                    top: 9,
                    child: IconButton(
                      icon: Icon(
                        Icons.radio_button_off_rounded,
                        color: Colors.blue,
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                      left: 50,
                      top: 23,
                      child: Text(
                        "Master Card",
                        style: TextStyle(fontSize: 16),
                      )),
                  Positioned(
                      right: 3,
                      top: 23,
                      child: Text(
                        "2564-8558-XXXX",
                        style: TextStyle(fontSize: 16),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

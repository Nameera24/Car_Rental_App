import 'package:flutter/material.dart';
import 'package:myproject/Screens/home.dart';

class FB extends StatefulWidget {
  const FB({Key? key}) : super(key: key);

  @override
  State<FB> createState() => _FBState();
}

class _FBState extends State<FB> {
  final bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: (context) => Home()));
            },
            child: Text(
              "Close",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          title: Text("FeedBack",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white)),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  "Post",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))
          ],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Write Something.....",
                    icon: Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.blue,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(right: 270),
              child: Text(
                "Add Location:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Container(
              height: 100,
              width: 500,
              color: Color.fromARGB(255, 231, 227, 227),
            ),
            ListTile(
              title: Text(
                "Twitter",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.toggle_off_rounded,
                size: 60,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                "Facebook",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.toggle_on_rounded,
                size: 60,
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                "Instagram",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.toggle_on_rounded,
                size: 60,
                color: Colors.blue,
              ),
            ),
            Container(
              height: 230,
              width: 500,
              color: Color.fromARGB(255, 231, 227, 227),
            )
          ],
        ));
  }
}

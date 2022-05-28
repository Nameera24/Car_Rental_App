import 'package:flutter/material.dart';
import 'package:myproject/Widgets/packages_widgets.dart';

import 'home.dart';

class Packages extends StatefulWidget {
  const Packages({ Key? key }) : super(key: key);

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages>with SingleTickerProviderStateMixin { 
  late TabController controller;
  @override
  void initState() {
    super.initState();

    controller = TabController(length: 1, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  void dispose() {
    controller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
    backgroundColor: Colors.red,
     leading: IconButton(
       onPressed:(){
          Navigator.of(context).pop(MaterialPageRoute(builder: (context) => Home()));
       },
        icon: Icon(Icons.arrow_back),
          // color: UIData.lightColor,
        ),
          title: Text("Packages"),
          bottom: TabBar(controller: controller, tabs: [
            Tab(
              text: "Seden",
            ),
           
          ]),
        ),
        body: TabBarView(controller: controller, children: [
       PP(),
        ]),

      );
}

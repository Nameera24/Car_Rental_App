import 'package:flutter/material.dart';
import 'package:myproject/Screens/home.dart';
import 'package:myproject/Widgets/subcategories_widgets.dart';

class Categories extends StatefulWidget {
  const Categories({ Key? key }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>with SingleTickerProviderStateMixin  {
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
          title: Text("Sub Categories"),
          bottom: TabBar(controller: controller, tabs: [
            Tab(
              text: "Seden",
            ),
           
          ]),
        ),
        body: TabBarView(controller: controller, children: [
       CC(),
      

          
        ]),

      );
}

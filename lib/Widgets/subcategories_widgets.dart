import 'package:flutter/material.dart';

class CC extends StatefulWidget {
  const CC({ Key? key }) : super(key: key);

  @override
  State<CC> createState() => _CCState();
}

class _CCState extends State<CC> {
 @override
   Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: size.height * 0.2,
            child: Card(
              color: Colors.grey.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: ListTile(
                leading: Card(
                    child: Image.asset(
                  'assets/pic3.jpg',
                  width: 100,
                  height: 100,
                )),
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text("BMWW 5series"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text('\$160'),
                          SizedBox(
                            width: size.width * 0.05,
                          ),
                          Text(
                            '\$125',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      // body: Row(
      //   children: [
      //     SizedBox(height: size.height*0.15,),
      //     Card(
      //       color: Colors.grey.shade200,
      //       margin: EdgeInsets.only(right: 150),
      //       child: Image.asset(
      //                   'assets/images/car.jpg',
      //                   height: size.height * 0.1,
      //                   width: size.width * 0.3,
      //                 ),
      //     ),
      //     Stack(
      //       children: [

      //       ],
      //     )
      //   ],
      // ),
    );
  }
}

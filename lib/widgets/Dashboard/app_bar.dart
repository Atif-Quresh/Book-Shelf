import 'package:flutter/material.dart';
import 'package:justtest/widgets/Dashboard/drawer.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Color.fromRGBO(250, 250, 250, 1),
    elevation: 0,
    //centerTitle: false,
    // leading: _addCircleAvatar(),
    // leadingWidth: 40,
    title: Image.asset(
      "assets/images/amazon_PNG21.png",
      height: 120,
      width: 120,
    ),
    actions: [
      Padding(
        padding: EdgeInsets.all(8),
        child: InkWell(
          child: CircleAvatar(
            child: Text('AQ'),
            backgroundColor: Color.fromRGBO(42, 95, 151, 1),
          ),
          onTap: () {
            print("CirlceAvatar tap");
          },
        ),
      )
    ],
  );
}

// Widget _addCircleAvatar() {
//   return Container(
//     //height: 15, width: 15,
//     child: CircleAvatar(backgroundColor: Colors.brown, child: Text("AQ")),
//   );
// }

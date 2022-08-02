import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:justtest/widgets/Entry_screen/login.dart';

import '../../models/user_model.dart';




class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //User? user = FirebaseAuth.instance.currentUser;
  //UserModel loggedInUser = UserModel();

  @override
  // void initState() {
  //   super.initState();
  //   FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(user!.uid)
  //       .get()
  //       .then((value) {
  //     this.loggedInUser = UserModel.fromMap(value.data());
  //     setState(() {});
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
  color: Color.fromRGBO(42, 95, 151, 1),  //Color.fromARGB(255, 7, 36, 105),
  shape: CircularNotchedRectangle(),
  notchMargin: 8.0,
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: IconButton(
            icon: Icon(Icons.chat,color: Colors.white,),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 20),
          child: IconButton(
            icon: Icon(Icons.shopping_cart_outlined,color: Colors.white),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(Icons.settings_outlined,color: Colors.white),
            onPressed: () {},
          ),
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.logout_sharp,color: Colors.white),
            onPressed: () {
              logout(context);
            }
          ),
        ),
      ],
    ),
  ),
  
);
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()));
  }
}












// Widget BuildBottomNavBAr = BottomNavigationBar(items: [
//   BottomNavigationBarItem(
//       icon: Icon(
//         Icons.chat,
//       color: Colors.black,),
//       label: "Chat"),
//   BottomNavigationBarItem(
//       icon: Icon(
//         Icons.shopping_cart_outlined,
//       color: Colors.black,),
//       label: "Cart"),
//   BottomNavigationBarItem(
//       icon: Icon(
//         Icons.settings_outlined,
//       color: Colors.black,),
//       label: "Setting"),
//   BottomNavigationBarItem(
//       icon: Icon(
//         Icons.logout_sharp,
//       color: Colors.black,),
//       label: "Logout"),
// ],
// //backgroundColor: Colors.blueAccent,
// );
 


  

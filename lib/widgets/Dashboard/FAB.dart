import 'package:flutter/material.dart';

class FAB extends StatefulWidget {
  FAB({Key? key}) : super(key: key);

  @override
  State<FAB> createState() => _FABState();
}

class _FABState extends State<FAB> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.qr_code_sharp,
        color: Colors.white,
      ),
      backgroundColor: Color.fromRGBO(42, 95, 151, 1),
    );
  }
}

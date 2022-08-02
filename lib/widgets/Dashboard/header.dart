import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
      Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BookShelf',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Welcome to Amazon BookShelf',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      )
    ];

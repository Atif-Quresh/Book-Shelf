import 'package:flutter/material.dart';

Widget buildSearchBar() {
  return Container(padding: EdgeInsets.all(8), height: 50,
  child: TextField(decoration: InputDecoration(hintText: 'Search a book', fillColor: Colors.black.withOpacity(0.05), filled: true,
  prefixIcon: Icon(Icons.search), prefixIconColor: Colors.black54, contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
  border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
                width: 0, 
                style: BorderStyle.none,
            ),
            ),
            )
  ),
  );
}

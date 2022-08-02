import 'package:flutter/material.dart';

class IconModel {
  String id;
  String icon;
  String title;

  IconModel({required this.id ,required this.icon, required this.title});

  static List<IconModel> iconsList = [
    IconModel(id: 'MTH',  icon: "assets/images/book_icon2.png", title: "Maths"),
    IconModel(id: 'BIO', icon: "assets/images/book_icon2.png", title: 'Biology'),
    IconModel(id: 'G100', icon: "assets/images/book_guide.png", title: 'Guides'),
    IconModel(id: 'PHY', icon: "assets/images/book_icon2.png", title: 'Physics'),
    IconModel(id: 'ENG', icon: "assets/images/book_icon2.png", title: 'English'),
    IconModel(id: 'CHEM', icon: "assets/images/book_icon2.png", title: 'Chemistry'),
  ];
}

// Action and Adventure.
// Classics.
// Comic Book or Graphic Novel.
// Detective and Mystery.
// Fantasy.
// Historical Fiction.
// Horror.
// Literary Fiction.

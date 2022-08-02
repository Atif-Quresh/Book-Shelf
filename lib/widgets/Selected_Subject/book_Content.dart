import 'package:flutter/material.dart';

class BookContent extends StatelessWidget {
  // final bookTitle;
  // final bookId;
  // BookContent({required this.bookTitle, required this.bookId});

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final CourseId = routeArg['id'];
    final CourseTitle = routeArg['title'];
    return Scaffold(
      appBar: AppBar(title: Text("$CourseTitle"), actions: []),
      body: (Center(
        child: Text(CourseId!),
      )),
    );
  }
}

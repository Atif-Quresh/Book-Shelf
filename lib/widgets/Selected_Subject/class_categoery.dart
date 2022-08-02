import 'package:flutter/material.dart';
import 'package:justtest/models/book_model.dart';

class ClassCategoryPage extends StatelessWidget {
  ClassCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final CourseId = routeArg['id'];
    final CourseTitle = routeArg['title'];
    final SelectedCourse = BookModel.allBookList.where((element) {
      return element.id!.contains(CourseId!);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("$CourseTitle"),
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        elevation: 0,
      ),
      body: GridView(
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            // if (CourseId == "MTH") ...{
            //   ...BookModel.mathsBookList.map((e) {
            //     return class_catergory_item(e.image);
            //   }).toList()
            //   //BookModel.mathsBookList.map((e) => e.image).toList()
            // },
            // if (CourseId == "BIO") ...{
            //   ...BookModel.bioBookList.map((e) {
            //     return class_catergory_item(e.image);
            //   }).toList()
            // },
            // if (CourseId == "CHEM") ...{
            //   ...BookModel.chemBookList.map((e) {
            //     return class_catergory_item(e.image);
            //   }).toList()
            // },
            // if (CourseId == "PHY") ...{
            //   ...BookModel.phyBookList.map((e) {
            //     return class_catergory_item(e.image);
            //   }).toList()
            // } else ...{
            //   //Center(child: Text('No data enter yet..!'),)
            // }
            // SelectedCourse != null?
            // ...[SelectedCourse.map((e) {
            //   return class_catergory_item(e.image);
            // })]
            // :
            // Text('no data'),
            if (SelectedCourse.isNotEmpty) ...{
              ...SelectedCourse.map((e) {
                return class_catergory_item(e.image, e.id, e.title);
              }).toList()
            } else
              ...{
                
              }
          ]),
    );
  }
}

class class_catergory_item extends StatelessWidget {
  final String image;
  final CourseId;
  final CourseTitle;
  class_catergory_item(
      this.image, @required this.CourseId, @required this.CourseTitle);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(2),
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 2,
          color: Color.fromRGBO(238, 238, 238, 1),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          )),
      onTap: () {
        Navigator.pushNamed(context, '/book_Content',
            arguments: {'id': CourseId, 'title': CourseTitle});
      },
    );
  }
}

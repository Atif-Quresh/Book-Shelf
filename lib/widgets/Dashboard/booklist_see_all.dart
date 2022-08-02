import 'package:flutter/material.dart';
import 'package:justtest/models/book_model.dart';
import 'package:justtest/widgets/Dashboard/select_book.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Best Seller"),
          backgroundColor: Color.fromRGBO(250, 250, 250, 1),
          elevation: 0,
        ),
        body: GridView(
          //shrinkWrap: true,
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: BookModel.bookList
              .map(
                (e) => InkWell(
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      color: Color.fromRGBO(238, 238, 238, 1),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                child: Image.asset(
                                  e.image,
                                  height: 220,
                                  // width: 110,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 4, left: 4, right: 4, bottom: 0),
                                // width: 110,
                                child: Text(
                                  e.title,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 4),
                                width: 110,
                                child: Text(
                                  e.subtitle,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black54),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) {
                          return SelectedBook(e.title, e.image, e.favourate);
                        },
                      ),
                    );
                    
                  },
                  borderRadius: BorderRadius.circular(5),
                ),
              )
              .toList(),
        ));
  }
}

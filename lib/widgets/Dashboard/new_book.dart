import 'package:flutter/material.dart';

import '../../models/book_model.dart';

class NewBookRecord extends StatelessWidget {
  final List<BookModel> newbookListHandler = BookModel.newBookList;
  NewBookRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 8),
        width: double.infinity,
        //color: Colors.black54.withOpacity(0.1),
        child: Column(children: [
          Container(
              //height: 35,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hot New Releases",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_right),
                      padding: EdgeInsets.only(bottom: 0),
                    )
                  ])),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  newbookListHandler.length,
                  (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: InkWell(
                          onTap: () {
                            //todo
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      newbookListHandler[index].image,
                                      height: 120,
                                      width: 350,
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 4, left: 4, right: 4, bottom: 0),
                                width: 110,
                                child: Text(
                                  newbookListHandler[index].title,
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
                                  newbookListHandler[index].subtitle,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
            ),
          )
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:justtest/models/book_model.dart';
import 'package:justtest/widgets/Dashboard/select_book.dart';

class BookList extends StatelessWidget {
  final List<BookModel> bookListHandler = BookModel.bookList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: double.infinity,
      color: Colors.black54.withOpacity(0.1),
      child: Column(
        children: [
          Container(
            height: 35,
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Seller",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                FittedBox(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/seeAll");
                      },
                      child: Text('See all'),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        minimumSize: Size(5, 5),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      )),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              List.generate(
                  4,
                  (index) => Container(
                        padding: EdgeInsets.all(4),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          child: Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 5,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      bookListHandler[index].image,
                                      height: 150,
                                      width: 110,
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 4, left: 4, right: 4, bottom: 0),
                                width: 110,
                                child: Text(
                                  bookListHandler[index].title,
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
                                  bookListHandler[index].subtitle,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black54),
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) {
                                  return SelectedBook(
                                      bookListHandler[index].title,
                                      bookListHandler[index].image,
                                      bookListHandler[index].favourate);
                                },
                              ),
                            );

                            //       Navigator.of(context).pushNamed(
                            // "/selectedBookScreen", arguments: {
                            //   'title' : bookListHandler[index].title,
                            //   'image' : bookListHandler[index].image,
                            //   'favourate' : bookListHandler[index].favourate,

                            // }
                            //);
                          },
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}

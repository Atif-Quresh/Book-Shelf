import 'package:flutter/material.dart';

class SelectedBook extends StatefulWidget {
  //const SelectedBook({Key? key}) : super(key: key);

  final String title;
  final String image;
   bool favourate;
  SelectedBook(
      @required this.title, @required this.image, @required this.favourate);

  @override
  State<SelectedBook> createState() => _SelectedBookState();
}

class _SelectedBookState extends State<SelectedBook> {
  @override
  Widget build(BuildContext context) {
    //////                  passing data through routes     ///////////////
    // final routeArgs =
    //     ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
    // final title = routeArgs['title'];
    // final image = routeArgs['image'];
    // bool favourate = routeArgs['favourate'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
    elevation: 0,
        title: Text(widget.title),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: IconButton(
              icon: Icon(
                widget.favourate ? Icons.favorite : Icons.favorite_border_outlined,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  widget.favourate = !widget.favourate;
                });
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // width: double.infinity,
              // height: double.infinity,
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.blue,),
              child: Card(
                elevation: 5,
                //color: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  child: Image.asset(
                    widget.image,
                    width: 250,
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Text('Here is book Content' ,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 4,
            ),
            Container(padding: EdgeInsets.all(10),
            child: Text('A grid view is a graphical control element used to show items in the tabular form. In this section, we are going to learn how to render items in a grid view in the Flutter application.GridView is a widget in Flutter that displays the items in a 2-D array (two-dimensional rows and columns). As the name suggests, it will be used when we want to show items in a Grid. We can select the desired item from the grid list by tapping on them. This widget can contain text, images, icons, etc. to display in a grid layout depending on the user requirement. It is also referred to as a scrollable 2-D array of widgets. Since it is scrollable, we can specify the direction only in which it scrolls.The grid view can be implemented in various ways, which are given below:GridView.count()It is the most frequently used grid layout in Flutter because here, we already know the grid\'s size.It allows developers to specify the fixed number of rows and columns.The GriedView.count()contains the following propertiecrossAxisCount: It is used to specify the number of columns in a grid view.crossAxisSpacing: It is used to specify the number of pixels between each child widget listed in the cross axis'
            ),
            )
          ],
        ),
      ),
    );
  }
}

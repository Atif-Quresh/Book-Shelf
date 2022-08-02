import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:justtest/widgets/Entry_screen/signup.dart';
import 'package:justtest/widgets/Dashboard/booklist_see_all.dart';
import 'package:justtest/widgets/Dashboard/home_page.dart';
import 'package:justtest/widgets/Entry_screen/login.dart';
import 'package:justtest/widgets/Dashboard/select_book.dart';
import 'package:justtest/widgets/Selected_Subject/book_Content.dart';
import 'package:justtest/widgets/Selected_Subject/class_categoery.dart';
import 'package:firebase_core/firebase_core.dart';

 Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await Firbase.in
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      //home: HomePage(),
      initialRoute: "/login",
      routes: {
        "/": (context) => HomePage(),
        "/seeAll": (context) => SeeAll(),
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignUpPage(),
        '/class_category':(context) => ClassCategoryPage(),
        '/book_Content':(context) => BookContent(),
        //"/selectedBookScreen": (context) =>  SelectedBook(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:justtest/widgets/Dashboard/FAB.dart';
import 'package:justtest/widgets/Dashboard/app_bar.dart';
import 'package:justtest/widgets/Dashboard/book_list.dart';
import 'package:justtest/widgets/Dashboard/bottom_nav_bar.dart';
import 'package:justtest/widgets/Dashboard/drawer.dart';
import 'package:justtest/widgets/Dashboard/header.dart';
import 'package:justtest/widgets/Dashboard/icon_list.dart';
import 'package:justtest/widgets/Dashboard/new_book.dart';
import 'package:justtest/widgets/Dashboard/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: buildAppBar(),
      //Body Section

      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...buildHeader(),
              buildSearchBar(),
              SubjectIconList(),
              BookList(),
              NewBookRecord(),
            ],
          ),
        ),
      ),
      //extendBody: true,
      //drawerEnableOpenDragGesture: true,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: keyboardIsOpened?
      null: FAB(),
      bottomNavigationBar: BottomNavBar(),
      extendBody: true,

      drawer: AppDrawer(),
    );
  }
}

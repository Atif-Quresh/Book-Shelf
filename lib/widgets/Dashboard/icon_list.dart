import 'package:flutter/material.dart';
import 'package:justtest/models/icon_Model.dart';
//import 'package:justtest/widgets/Selected_Subject/class_categoery.dart';



class SubjectIconList extends StatelessWidget {
   SubjectIconList({Key? key}) : super(key: key);
final List<IconModel> listHandler = IconModel.iconsList;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                listHandler.length,
                (index) => InkWell(
                      child: Container(
                        //color: Colors.blue,
                        width: 80,
                        child: Column(
                          children: [
                            Image.asset(
                              listHandler[index].icon,
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              listHandler[index].title,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/class_category',
                            arguments: {'id': listHandler[index].id,
                            'title':listHandler[index].title});
                      },
                      borderRadius: BorderRadius.circular(20),
                    ))),
      ),
    );
  }
}

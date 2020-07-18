import 'package:food_app/main.dart';
import 'constants.dart';
import 'bodyfile.dart';


import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  final text;
  final bool isactive;
  final Function function;

  CategoryItem({this.text, this.isactive = false, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(children: [
          Text(text,
              style: isactive
                  ? TextStyle(color: kTextColor, fontWeight: FontWeight.bold)
                  : TextStyle(fontSize: 13,color: kTextColor.withOpacity(0.5))),
          if (isactive)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 2,
              width: 22,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
            )
        ]),
      ),
    );
  }
}

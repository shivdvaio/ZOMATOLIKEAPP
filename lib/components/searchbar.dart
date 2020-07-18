import 'bodyfile.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
class searchbar extends StatelessWidget {
final Function function;
searchbar({this.function});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: ksecondaryColor.withOpacity(0.32))),
      child: TextField(
      onChanged: function,
        decoration: InputDecoration(
            hintText: "Search Here",
            hintStyle: TextStyle(color: ksecondaryColor),
            border: InputBorder.none,
            icon: SvgPicture.asset('assets/icons/search.svg')),
      ),
    );
  }
}

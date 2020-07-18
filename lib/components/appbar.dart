import 'package:flutter/material.dart';
import 'package:food_app/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

AppBar Homeappbar() {
  return AppBar(
    backgroundColor: Colors.white10.withOpacity(0.4),
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          children: [TextSpan(text: "Shiv",style: TextStyle(color: ksecondaryColor)

          ),
            TextSpan(text: "TheDaba",style: TextStyle(color: kPrimaryColor))]),
    ),
    actions: [
      IconButton(icon: SvgPicture.asset('assets/icons/notification.svg'),onPressed: (){},)
    ],
  );
}


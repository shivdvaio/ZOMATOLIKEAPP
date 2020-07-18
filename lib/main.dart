import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/appbar.dart';
import 'components/bodyfile.dart';
import 'components/constants.dart';
import 'components/searchbar.dart';
import 'components/navigationbar.dart';

void main() {
  runApp(MyApp());
}

class Foodapp extends StatefulWidget {
  @override
  _FoodappState createState() => _FoodappState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Foodapp());
  }
}

class _FoodappState extends State<Foodapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: navigationbar(),
        appBar: Homeappbar(),
        body: Body());
  }
}

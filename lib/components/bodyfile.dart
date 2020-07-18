import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/constants.dart';
import 'package:food_app/main.dart';
import 'searchbar.dart';
import 'categoryitem.dart';
import 'itemcard.dart';
import 'discountcard.dart';
import 'detailscreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchbar(
            function: (value) {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryItem(
                  isactive: true,
                  text: 'Rajma Chawal',

                ),
                CategoryItem(
                  text: 'Paneer',
                ),
                CategoryItem(
                  text: 'Chicken',
                ),
                CategoryItem(
                  text: 'Dal',
                ),
                CategoryItem(
                  text: 'Aalu',
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                itemcard(
                  foodname1: "Cheese And Burger",
                  foodname2: "KFC",
                  press1: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>detailscreen() ));
                  },
                  Svg: 'assets/icons/burger_beer.svg',
                ),
                itemcard(
                  foodname1: "Chicken",
                  foodname2: "By MISHRA",
                  press1: () {},
                  Svg: 'assets/icons/chinese_noodles.svg',
                ),
                itemcard(
                  foodname1: "veg",
                  foodname2: "BY SHIV",
                  press1: () {},
                  Svg: 'assets/icons/chinese_noodles.svg',
                ),
                itemcard(
                  foodname1: "AALU",
                  foodname2: "by mukul",
                  press1: () {},
                  Svg: 'assets/icons/chinese_noodles.svg',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Offer and Discounts",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                discountcard(),

              ],
            ),
          )
        ],
      ),
    );
  }
}

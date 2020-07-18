import 'constants.dart';
import 'package:food_app/main.dart';
import 'bodyfile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';


class discountcard extends StatelessWidget {
  const discountcard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: DecoratedBox(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child:
                SvgPicture.asset('assets/icons/macdonalds.svg'),
              ),
              Expanded(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                              text: "Get discount of \n",
                              style: TextStyle(fontSize: 16,)),
                          TextSpan(
                              text: "30%",
                              style: TextStyle(
                                  fontSize: 43,
                                  fontWeight: FontWeight.bold)),
                        ])),
              ),

            ],
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFFF961F).withOpacity(0.7),
              kPrimaryColor.withOpacity(0.7)
            ]),
            borderRadius: BorderRadius.circular(10)),
      ),
      width: double.infinity,
      height: 166,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                  'assets/images/beyond-meat-mcdonalds.png'))),
    );
  }
}

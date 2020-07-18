import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bodyfile.dart';
import 'constants.dart';
class itemcard extends StatelessWidget {
  final String foodname1, foodname2 ,Svg ;
  final Function press1;

  itemcard({this.foodname1,this.foodname2,this.press1,this.Svg});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 15,top: 20,bottom: 20),

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 20,
                color: Color(0xFFB0CCE1).withOpacity(0.32))
          ]),
      child: Material(
        color: Colors.transparent,

        child: InkWell(
          onTap: press1,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: SvgPicture.asset(
                    Svg,
                    width: 50,
                  ),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                ),
                Text(foodname1,style: TextStyle(color: kTextLightColor,fontSize: 10),),
                Text(foodname2,style: TextStyle(color: kTextLightColor,fontSize: 11),)


              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'bodyfile.dart';

class detailscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Body(
            Imgsrc: 'assets/images/burger.png',
          ),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: kPrimaryColor,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 35,
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/share.svg'),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/more.svg'))
            ],
          ),
          backgroundColor: kPrimaryColor),
    );
  }
}

class Body extends StatelessWidget {
  final String Imgsrc;
  Body({this.Imgsrc});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          Imgsrc,
          height: size.height * 0.25,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                shopname(name: "Mac Donalds"),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cheese Burger",
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SmoothStarRating(
                                  allowHalfRating: false,
                                  onRated: (v) {},
                                  starCount: 5,
                                  isReadOnly: true,
                                  color: kPrimaryColor,
                                  borderColor: kPrimaryColor,
                                  spacing: 0.0),
                              Text("24 Reviews")
                            ],
                          )
                        ],
                      ),
                    ),
                    ClipPath(
                      clipper: Pricecliper(),
                      child: Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          r"15$",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        height: 66,
                        width: 65,
                        color: kPrimaryColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "A cheeseburger is a hamburger topped with cheese. Traditionally, the slice of cheese is placed on top of the meat patty, but the burger can include variations in structure, ingredients and composition. The cheese is usually added to the cooking hamburger patty shortly before serving, which allows the cheese to melt.",
                  style: TextStyle(height: 2, color: kTextLightColor),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/bag.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Order Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        width: size.width * 0.8,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
          ),
        )
      ],
    );
  }

  Row shopname({String name}) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: kPrimaryColor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Pricecliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreheight = 20;
    path.lineTo(0, size.height - ignoreheight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreheight);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

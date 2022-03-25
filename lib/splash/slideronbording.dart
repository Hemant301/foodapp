import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
// import 'package:jayshreepujabhandar/Const/slider.dart';
// import 'package:jayshreepujabhandar/modal/homemodal.dart';

// import 'package:url_launcher/url_launcher.dart';

class MyCorosule extends StatefulWidget {
  MyCorosule({
    Key? key,
  }) : super(key: key);

  @override
  _MyCorosuleState createState() => _MyCorosuleState();
}

class _MyCorosuleState extends State<MyCorosule> {
  int ci = 0;

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/splash1.png',
      'assets/splash1.png',
      'assets/splash1.png',
    ];
    List<String> text = [
      "Order your favorite food and get it delivered",
      "Whether you want a pizza burger or groceries",
      "Order from a wide range of Restaurants",
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (int i, G) {
              setState(() {
                ci = i;
              });
            },
            // onPageChanged: (int index) {},
            // height: size.width / 2,
            height: MediaQuery.of(context).size.height - 240,
            aspectRatio: 10 / 5.0,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            //onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
          items: List.generate(
            image.length,
            (index) => Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(image[index],
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height - 300),
                  Container(
                      width: MediaQuery.of(context).size.width - 40,
                      child: Center(
                        child: Text(
                          text[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                image.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                            color: index == ci ? Colors.orange : Colors.white,
                            shape: BoxShape.circle),
                        width: 10,
                        height: 10,
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

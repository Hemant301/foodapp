import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
// import 'package:jayshreepujabhandar/Const/slider.dart';
// import 'package:jayshreepujabhandar/modal/homemodal.dart';

// import 'package:url_launcher/url_launcher.dart';

class DiningSlider extends StatefulWidget {
  DiningSlider({
    Key? key,
  }) : super(key: key);

  @override
  _DiningSliderState createState() => _DiningSliderState();
}

class _DiningSliderState extends State<DiningSlider> {
  int ci = 0;

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'https://d3jmn01ri1fzgl.cloudfront.net/photoadking/webp_thumbnail/5fe3257ad6874_json_image_1608721786.webp',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_sdNiNM5KmIMzQjtmQ6JskZ1O6uNsfNFRPA&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6VxY4vVd6xBTXQhCytvLyCwWTQl4zzKmSLw&usqp=CAU',
    ];
    // List<String> text = [
    //   "Order your favorite food and get it delivered",
    //   "Whether you want a pizza burger or groceries",
    //   "Order from a wide range of Restaurants",
    // ];
    return Column(
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
            // height: MediaQuery.of(context).size.height - 240,
            aspectRatio: 5 / 2.5,
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
              width: MediaQuery.of(context).size.width - 20,
              child: Image.network(
                image[index],
                fit: BoxFit.fill,
                height: 120,
              ),
            ),
          ),
        ),
        Row(
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
                            offset: Offset(1, 1), // changes position of shadow
                          ),
                        ],
                        color: index == ci ? Colors.orange : Colors.white,
                      ),
                      width: 20,
                      height: 5,
                    ),
                  )),
        ),
      ],
    );
  }
}

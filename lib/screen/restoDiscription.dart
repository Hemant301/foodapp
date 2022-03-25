import 'package:flutter/material.dart';
import 'package:foodapp/auth/offerPage.dart';
import 'package:foodapp/consts/diningslider.dart';

class RestoDiscription extends StatefulWidget {
  const RestoDiscription({Key? key}) : super(key: key);

  @override
  State<RestoDiscription> createState() => _RestoDiscriptionState();
}

class _RestoDiscriptionState extends State<RestoDiscription> {
  bool arrow = false;
  int activeIndex = 0;
  bool button = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 70),
                      child: Container(
                        height: MediaQuery.of(context).size.height - 500,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: BackButtonSS(),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    top: MediaQuery.of(context).size.height - 510,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(
                          // padding: EdgeInsets.all(10),
                          // height: 220,
                          // width: MediaQuery.of(context).size.width,
                          width: MediaQuery.of(context).size.width - 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(1, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // ignore: prefer_const_constructors
                                    Text(
                                      "Only Veg",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          fontSize: 16,
                                          color: Colors.black,
                                          // fontFamily: font,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Only Veg",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          fontSize: 10,
                                          color: Colors.grey[500],
                                          // fontFamily: font,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Only Veg",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          fontSize: 10,
                                          color: Colors.grey[500],

                                          // fontFamily: font,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      // image: DecorationImage(
                                      //     image: NetworkImage(
                                      //         "https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg"),
                                      //     fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        bottomLeft: Radius.circular(50),
                                      ),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "5",
                                            style: TextStyle(
                                                letterSpacing: 1,
                                                fontSize: 12,
                                                color: Colors.white,

                                                // fontFamily: font,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      // image: DecorationImage(
                                      //     image: NetworkImage(
                                      //         "https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg"),
                                      //     fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        bottomLeft: Radius.circular(50),
                                      ),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Icon(
                                          //   Icons.star,
                                          //   color: Colors.white,
                                          // ),
                                          Text(
                                            "3 Photo",
                                            style: TextStyle(
                                                letterSpacing: 1,
                                                fontSize: 12,
                                                color: Colors.white,

                                                // fontFamily: font,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   top: MediaQuery.of(context).size.height - 750,
                  //   child: Column(
                  //     children: [Text("data")],
                  //   ),
                  // )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                padding: EdgeInsets.all(16),
                color: Colors.pink[100],
                child: Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            activeIndex = 0;
                          });
                        },
                        child: Container(
                          child: Buttons(
                              label: 'DELIVERY',
                              active: activeIndex == 0 ? true : false),
                        ),
                      ),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              activeIndex = 1;
                            });
                          },
                          child: Container(
                            child: Buttons(
                                label: 'DINING',
                                active: activeIndex == 1 ? true : false),
                          )),
                      // SizedBox(
                      //   width: 30,
                      // ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              activeIndex = 2;
                            });
                          },
                          child: Container(
                            child: Buttons(
                                label: 'REVIEW',
                                active: activeIndex == 2 ? true : false),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Center(
              //   child: Column(
              //     children: [
              //       Container(
              //         height: 30,
              //         color: Colors.white,
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             InkWell(
              //               onTap: () {
              //                 if (button == false) {
              //                   setState(() {
              //                     button = true;
              //                   });
              //                 } else {
              //                   setState(() {
              //                     button = false;
              //                   });
              //                 }
              //                 setState(() {
              //                   active = 0;
              //                 });
              //               },
              //               child: ClipRRect(
              //                 borderRadius: BorderRadius.circular(10),
              //                 child: Container(
              //                   padding: EdgeInsets.symmetric(horizontal: 5),
              //                   height: 30,
              //                   // width: 60,
              //                   color: button == false
              //                       ? Colors.white
              //                       : Colors.orange,
              //                   child: Center(child: Text("DELIVERY")),
              //                 ),
              //               ),
              //             ),
              //             ClipRRect(
              //               borderRadius: BorderRadius.circular(10),
              //               child: Container(
              //                 height: 30,
              //                 width: 60,
              //                 color: Colors.orange,
              //                 child: Center(child: Text("DINNIG")),
              //               ),
              //             ),
              //             ClipRRect(
              //               borderRadius: BorderRadius.circular(10),
              //               child: Container(
              //                 height: 60,
              //                 width: 70,
              //                 color: Colors.orange,
              //                 child: Center(child: Text("REVIEW")),
              //               ),
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              activeIndex == 0 ? DelivertPart() : Container(),
              activeIndex == 1 ? DiningPage() : Container(),

              // active == 1 ? Container() : Container(),
            ],
          ),
        );
      }),
    );
  }
}

class DelivertPart extends StatefulWidget {
  const DelivertPart({Key? key}) : super(key: key);

  @override
  State<DelivertPart> createState() => _DelivertPartState();
}

class _DelivertPartState extends State<DelivertPart> {
  bool arrow = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        // height: 30,
        // width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "PURE VEG",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_rounded, color: Colors.red),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.orange,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Special Khari",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          if (arrow == false) {
                            setState(() {
                              arrow = true;
                            });
                          } else {
                            setState(() {
                              arrow = false;
                            });
                          }
                        },
                        child: Icon(
                          arrow == false
                              ? Icons.keyboard_arrow_down
                              : Icons.keyboard_arrow_up,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            arrow == true
                ? Column(
                    children: List.generate(
                        4,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                //  crossAxisAlignment: CrossAxisAlignment.,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.add_box_outlined,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        "Tomato Ketchup",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Rs  100",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.orange)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Text(
                                                '-',
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('1'),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.orange)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Text(
                                                '+',
                                                style: TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                  )
                : Container()
          ],
        ));
  }
}

class Buttons extends StatefulWidget {
  const Buttons({Key? key, this.label, this.active = false}) : super(key: key);
  final String? label;
  final bool active;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          color: widget.active ? Colors.black : Colors.white,
          child: Text(
            "${widget.label}",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
          ),
        ),
        // Container(
        //   margin: EdgeInsets.only(top: 1),
        //   height: 2,
        //   width: 50,
        //   color: widget.active ? Colors.black : Colors.white,
        // )
      ],
    );
  }
}

class DiningPage extends StatelessWidget {
  const DiningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DiningSlider(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.timer),
                  Text(
                    "   Open",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(
                Icons.call,
                color: Colors.orange,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.food_bank),
                  Text(
                    "   Serves Fast Food",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // Icon(
              //   Icons.call,
              //   color: Colors.orange,
              // )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.money),
                  Text(
                    "   Rs 400 for two",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              // Icon(
              //   Icons.call,
              //   color: Colors.orange,
              // )
            ],
          ),
        ),
      ],
    );
  }
}

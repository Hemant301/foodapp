import 'package:flutter/material.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  BackButtonSS(),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Offers",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Column(
              children: List.generate(
                  5,
                  (index) => Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          height: 120,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Image.network(
                                            "https://img.freepik.com/free-photo/chicken-skewers-with-slices-sweet-peppers-dill_2829-18813.jpg?w=740",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Patel's Puff House",
                                        style: TextStyle(
                                            // letterSpacing: 1,
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "Fast Food\nSarthana | 1301.21Kms",
                                        style: TextStyle(
                                          // letterSpacing: 1,
                                          fontSize: 12,
                                          color: Colors.grey[600],
                                          // fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star_border_outlined),
                                          Text(
                                            "5 - 24 mins - & 400 for two",
                                            style: TextStyle(
                                              // letterSpacing: 1,
                                              fontSize: 12,
                                              color: Colors.grey[900],
                                              // fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                150,
                                        height: 2,
                                        color: Colors.orange,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.local_offer_outlined,
                                            color: Colors.orange,
                                            size: 15,
                                          ),
                                          Text(
                                            " 60% off upto 100",
                                            style: TextStyle(
                                              // letterSpacing: 1,
                                              fontSize: 13,
                                              color: Colors.grey[900],
                                              // fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 10,
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  // border: Border.all(color: Colors.black, width: 1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          1, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    "60% off",
                                    style: TextStyle(
                                        letterSpacing: 1,
                                        fontSize: 16,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}

class BackButtonSS extends StatelessWidget {
  const BackButtonSS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 40,
        height: 40,
        // padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.4),
          //     spreadRadius: 1,
          //     blurRadius: 1,
          //     offset: Offset(1, 3), // changes position of shadow
          //   ),
          // ],
        ),
        child: Center(child: Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}

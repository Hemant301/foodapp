import 'package:flutter/material.dart';
import 'package:foodapp/bloc/homebloc.dart';
import 'package:foodapp/consts/restolist.dart';
import 'package:foodapp/modal/homemodal.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    homeBloc.fetchHomedata();
    return Scaffold(
        body: StreamBuilder<HomeModal>(
            stream: homeBloc.getHomedata.stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Container();
              return SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.location_city_outlined),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      20,
                                  child: Text(
                                    "17,Ashok kunj vihar ditatoli ranchi jharkhand",
                                    style: TextStyle(
                                      fontSize: 12,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.local_offer_sharp),
                                    Text(
                                      "offers",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: List.generate(
                              snapshot.data!.homedata!.banner.length,
                              (index) => InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, "/restoDiscription");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 130,
                                    height: 220,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdkYx8x8WdvLgoJTLvDeYSzZsV3ikCbUU3aw&usqp=CAU"),
                                          fit: BoxFit.cover),
                                      color: Colors.orange,
                                      // border: Border.all(color: Colors.blue, width: 1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.4),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(1,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: List.generate(
                          snapshot.data!.homedata!.categorylist.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context, "/CatgoryPage",
                                      // arguments: {
                                      //   'super_id': snapshot.data!.data[index].super_id
                                      // });
                                    );
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    // backgroundImage: NetworkImage(
                                    // "https://pngimg.com/uploads/tv/tv_PNG39244.png"),
                                    backgroundColor: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Image.network(
                                        "https://images.news18.com/ibnlive/uploads/2021/10/world-food-day-16342951394x3.jpg",
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  snapshot.data!.homedata!.categorylist[index]
                                      .title!,
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 10,
                                      color: Colors.black,
                                      // fontFamily: font,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "POPULAR RESTAURANTS",
                          style: TextStyle(
                              // letterSpacing: 1,
                              fontSize: 16,
                              color: Colors.grey[700],
                              // fontFamily: font,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: List.generate(
                              snapshot
                                  .data!.homedata!.popular_restuarant.length,
                              (index) => InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, "/firstscreen");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 140,
                                    height: 150,
                                    // padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdkYx8x8WdvLgoJTLvDeYSzZsV3ikCbUU3aw&usqp=CAU"),
                                          fit: BoxFit.cover),
                                      color: Colors.orange,
                                      // border: Border.all(color: Colors.blue, width: 1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.4),
                                          spreadRadius: 1,
                                          blurRadius: 1,
                                          offset: Offset(1,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      // crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          color: Colors.black.withOpacity(0.5),
                                          width: 140,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 100,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Text(
                                                    snapshot
                                                        .data!
                                                        .homedata!
                                                        .popular_restuarant[
                                                            index]
                                                        .rest_title!,
                                                    style: TextStyle(
                                                        // letterSpacing: 1,
                                                        fontSize: 10,
                                                        color: Colors.white,
                                                        // fontFamily: font,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "All RESTAURANTS",
                          style: TextStyle(
                              // letterSpacing: 1,
                              fontSize: 16,
                              color: Colors.grey[700],
                              // fontFamily: font,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        children: List.generate(
                          snapshot.data!.homedata!.restuarant_data.length,
                          (index) => RestoWithOffer(
                            data:
                                snapshot.data!.homedata!.restuarant_data[index],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.youtube_searched_for),
                                          Container(
                                            width: 85,
                                            child: Text(
                                              "Best RESTAURANTS",
                                              style: TextStyle(
                                                  // letterSpacing: 1,
                                                  fontSize: 12,
                                                  color: Colors.grey[700],
                                                  // fontFamily: font,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.youtube_searched_for),
                                          Container(
                                            width: 60,
                                            child: Text(
                                              "Grate Discount",
                                              style: TextStyle(
                                                  // letterSpacing: 1,
                                                  fontSize: 12,
                                                  color: Colors.grey[700],
                                                  // fontFamily: font,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.youtube_searched_for),
                                          Container(
                                            width: 60,
                                            child: Text(
                                              "Near by Favorites",
                                              style: TextStyle(
                                                  // letterSpacing: 1,
                                                  fontSize: 12,
                                                  color: Colors.grey[700],
                                                  // fontFamily: font,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "LIVE",
                                        style: TextStyle(
                                            // letterSpacing: 1,
                                            fontSize: 50,
                                            color: Colors.grey[400],
                                            // fontFamily: font,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "LIFE",
                                        style: TextStyle(
                                            // letterSpacing: 1,
                                            fontSize: 50,
                                            color: Colors.red,
                                            // fontFamily: font,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "WITH",
                                        style: TextStyle(
                                            // letterSpacing: 1,
                                            fontSize: 50,
                                            color: Colors.grey[500],
                                            // fontFamily: font,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "FOOD",
                                        style: TextStyle(
                                            // letterSpacing: 1,
                                            fontSize: 50,
                                            color: Colors.grey[600],
                                            // fontFamily: font,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Desing & Develop by\nXYZ",
                                        style: TextStyle(
                                            // letterSpacing: 1,
                                            fontSize: 12,
                                            color: Colors.grey[400],
                                            // fontFamily: font,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 70,
                            child: Image.asset(
                              "assets/pngwing.png",
                              height: 200,
                              width: 200,
                            ),
                          )
                        ],
                      )
                    ]),
              );
            }));
  }
}

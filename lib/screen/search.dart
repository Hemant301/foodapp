import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: Row(
            children: [
              // InkWell(
              //     onTap: () {
              //       Navigator.pop(context);
              //     },
              //     child: Icon(
              //       Icons.arrow_back,
              //       size: 30,
              //     )),
              // SizedBox(
              //   width: 10,
              // ),
              Text(
                "Explore ",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    // fontFamily: font,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "Our Ressto",
                style: TextStyle(
                    color: Colors.orange,
                    letterSpacing: 1,
                    // fontFamily: font,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 3), // changes position of shadow
                ),
              ],
            ),
            child: TextField(
              // onChanged: (s) {
              //   gallerycatogrybloc.fetchSearch(s);
              // },
              decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                  ),
                  border: InputBorder.none),
            ),
          ),
        ),
      ],
    ));
  }
}

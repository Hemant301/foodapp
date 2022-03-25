import 'package:flutter/material.dart';
import 'package:foodapp/auth/offerPage.dart';
import 'package:foodapp/consts/restolist.dart';

class CatgoryPage extends StatelessWidget {
  const CatgoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                // padding: EdgeInsets.only(bottom: 70),
                child: Container(
              height: MediaQuery.of(context).size.height - 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn-prod.medicalnewstoday.com/content/images/articles/322/322303/selection-of-chinese-food-that-may-cause-chinese-restaurant-syndrome.jpg"),
                    fit: BoxFit.cover),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(50),
                //   bottomRight: Radius.circular(50),
                // ),
              ),
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
            SizedBox(
              height: 20,
            ),
            RestoWithOffer(),
            RestoWithoutOffer(),
            RestoWithOffer(),
            RestoWithoutOffer(),
            RestoWithOffer(),
            RestoWithoutOffer()
          ],
        ),
      ),
    );
  }
}

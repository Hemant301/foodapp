import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "/switchPage");
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.3, 0.5, 0.8],
            colors: [
              Colors.orange.withOpacity(0.2),

              Colors.orange.withOpacity(0.5),
              Colors.orange.withOpacity(0.8),

              // Colors.amberAccent,
              Colors.orange
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 280,
                left: 0,
                right: 0,
                child: Image.network(
                  "https://media.istockphoto.com/vectors/logo-design-for-financial-development-investment-real-estate-and-vector-id1338923481?b=1&k=20&m=1338923481&s=170667a&w=0&h=9Kv48Qc-cPUiynm9JCie9Xq1VB8IJNg5YFRKfqTkpAQ=",
                  height: 50,
                  width: 50,
                ),
              ),
              Center(
                  child: Text(
                "ServeZilla",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff003dbb),
                ),
              )),
              Positioned(
                bottom: 8,
                left: 0,
                right: 0,
                child: RichText(
                  text: TextSpan(
                      text: "Crafted by\n",
                      style: TextStyle(color: Colors.black, fontSize: 10),
                      children: [
                        TextSpan(
                          text: "TheCybertize",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

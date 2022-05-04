import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/auth/forgetpage.dart';
import 'package:foodapp/auth/login.dart';
import 'package:foodapp/auth/offerPage.dart';
import 'package:foodapp/auth/otp.dart';
import 'package:foodapp/auth/signp.dart';
import 'package:foodapp/screen/cattgorypage.dart';
import 'package:foodapp/screen/firstscreen.dart';
import 'package:foodapp/screen/maps/mapshome.dart';
import 'package:foodapp/screen/maps/trial.dart';
import 'package:foodapp/screen/restoDiscription.dart';
import 'package:foodapp/splash/onbordingScreen.dart';
import 'package:foodapp/splash/splashscreen.dart';
import 'package:foodapp/splash/switchPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/splashscreen",
        routes: {
          "/splashscreen": (context) => Splash(),
          "/otp": (context) => VeryfiedOtp(),
          "/switchPage": (context) => SwitchAppPage(),
          "/onbordingScreen": (context) => OnbordingScreen(),
          "/forgetpage": (context) => ForgetePage(),
          "/login": (context) => LoginPage(),
          "/signp": (context) => SignUp(),
          "/offerPage": (context) => OfferPage(),
          "/firstscreen": (context) => Nav(),
          "/restoDiscription": (context) => RestoDiscription(),
          "/CatgoryPage": (context) => CatgoryPage(),
          // "/mapshome": (context) => PincodePage()
          // "/trial": (context) => MapFunction(),
        });
  }
}

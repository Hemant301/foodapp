import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodapp/api/authapi.dart';
import 'package:foodapp/consts/blod.dart';

import 'package:sms_autofill/sms_autofill.dart';

class VeryfiedOtp extends StatefulWidget {
  const VeryfiedOtp({Key? key}) : super(key: key);

  @override
  State<VeryfiedOtp> createState() => _VeryfiedOtpState();
}

class _VeryfiedOtpState extends State<VeryfiedOtp> {
  String phoneno = "";
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController otpCon = TextEditingController();
  bool? isLoading;
  // @override
  // late TextEditingController otpCon;
  String acid = "";
  // PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();
  // String formattedNumber =
  //     phoneUtil.format(inputNumber, PhoneNumberFormat.E164);
  // void initState() {
  //   otpCon = TextEditingController();
  //   super.initState();
  // }

  bool otpcodeVisibal = false;
  String verificationId = "";
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    // print("${data['ACCId']}}-------------123");
    print("${data['phone']}}-------------123");
    // acid = data['ACCId'];
    phoneno = data['phone'];
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: BoxDecoration(
                  color: Color(0xff56c7d9),
                  // borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(50),
                  //     bottomRight: Radius.circular(50))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 25),
                    //   child: InkWell(
                    //     onTap: () {
                    //       Navigator.pop(context);
                    //     },
                    //     child: Icon(
                    //       Icons.arrow_back,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50, left: 30),
                      child: Text(
                        "OTP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    ),
                  ],
                ),
              ),

              Text(
                "${phoneno}",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Click the Send Button to send Otp"),
              SizedBox(
                height: 10,
              ),
              Visibility(visible: otpcodeVisibal, child: Text('Enter the OTP')),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: otpcodeVisibal,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: PinInputTextField(
                      controller: otpCon,
                      pinLength: 6,
                      cursor: Cursor(
                        width: 2,
                        height: 30,
                        color: Colors.black,
                        enabled: true,
                      ),
                      decoration: UnderlineDecoration(
                        colorBuilder: FixedColorBuilder(Colors.black),
                        lineHeight: 1.0,
                        textStyle: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              isLoading == true
                  ? Center(child: CircularProgressIndicator())
                  : Container(),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (otpcodeVisibal) {
                      verifyCode();
                    } else {
                      verifideNumber();
                    }
                  },
                  child: Text(otpcodeVisibal ? "Verify" : "Sent Otp")),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(20),
              //   child: InkWell(
              //     onTap: () async {
              //       print(otpCon.text);

              //       if (otpCon.text == '') {
              //         // show error
              //         Fluttertoast.showToast(
              //             msg: "Invalid otp!",
              //             toastLength: Toast.LENGTH_SHORT,
              //             gravity: ToastGravity.BOTTOM,
              //             timeInSecForIosWeb: 1,
              //             backgroundColor: Colors.green,
              //             textColor: Colors.white,
              //             fontSize: 16.0);
              //       } else {
              //         print(otpCon.text);
              //         print(acid);
              //         setState(() {
              //           isLoading = true;
              //         });

              //         AuthApi _authApi = AuthApi();
              //         Map data = await _authApi.doSugnupvERIFY(
              //           otp: otpCon.text,
              //           accid: acid,
              //         );
              //         print(data);

              //         if (data['ResponseCode'] == "200") {
              //           setState(() {
              //             isLoading = false;
              //           });
              //           userCred.addUserId(acid);
              //           Future.delayed(Duration(seconds: 0), () {
              //             Navigator.of(context).pushNamedAndRemoveUntil(
              //                 '/login', ModalRoute.withName('/otp'));
              //           });
              //           Fluttertoast.showToast(
              //               msg: data['message'],
              //               toastLength: Toast.LENGTH_SHORT,
              //               gravity: ToastGravity.BOTTOM,
              //               timeInSecForIosWeb: 1,
              //               backgroundColor: Colors.green,
              //               textColor: Colors.white,
              //               fontSize: 16.0);
              //         } else if (data['ResponseCode'] == "200") {
              //           Fluttertoast.showToast(
              //               msg: data['ResponseMsg'],
              //               toastLength: Toast.LENGTH_SHORT,
              //               gravity: ToastGravity.BOTTOM,
              //               timeInSecForIosWeb: 1,
              //               backgroundColor: Colors.red,
              //               textColor: Colors.white,
              //               fontSize: 16.0);
              //           setState(() {
              //             isLoading = false;
              //           });
              //           //? Wrong
              //           // setState(() {
              //           //   errorMsg = 'Wrong Otp';
              //           // });
              //         }
              //       }
              //       return;
              //     },
              //     child: Container(
              //       width: MediaQuery.of(context).size.width - 20,
              //       decoration: BoxDecoration(color: Colors.amber),
              //       child: Center(
              //         child: Padding(
              //           padding: const EdgeInsets.symmetric(
              //               vertical: 10, horizontal: 10),
              //           child: Text(
              //             'Next',
              //             style: TextStyle(fontWeight: FontWeight.bold),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ])));
  }

  void verifideNumber() {
    auth.verifyPhoneNumber(
        phoneNumber: "+91-${8210925188}",
        verificationCompleted: (PhoneAuthCredential credential) {
          auth
              .signInWithCredential(credential)
              .then((value) => {print("you are loging sucessfully")});
        },
        verificationFailed: (FirebaseAuthException exception) {
          print(exception.message);
        },
        codeSent: (String verificationID, int? resendToken) {
          verificationId == verificationID;
          otpcodeVisibal = true;
          setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationID) {});
  }

  Future<void> verifyCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpCon.text);
    {
      await auth
          .signInWithCredential(credential)
          .then((value) => print("you are loging"));
    }
  }
}

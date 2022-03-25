import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodapp/api/authapi.dart';
import 'package:foodapp/const.dart/textfid.dart';
import 'package:foodapp/consts/blod.dart';

TextEditingController _phoneController = TextEditingController();

TextEditingController _pwdController = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLoging = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.grey[200],
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.height,
                ),
                Container(
                  color: Colors.grey[200],
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.network(
                          "https://img.freepik.com/free-vector/high-five-concept-illustration_114360-1078.jpg?w=740",
                          height: 40,
                          width: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "SET\nDELIVERY\nLOCATION",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(
                    "assets/pngwing.png",
                    height: 200,
                    width: 200,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Login/creat Account quickly to manage orders",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.bold),
                  ),
                  TiextFormFilds(
                    hinttext: "Mobile",
                    controller: _phoneController,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TiextFormFilds(
                    hinttext: "Password",
                    controller: _pwdController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/forgetpage");
                        },
                        child: Text(
                          "Forgot Password ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async {
                      if ((_phoneController.text).length <= 9) {
                        Fluttertoast.showToast(
                            msg: "Invalid Login!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        return;
                      } else if (_pwdController.text == " " ||
                          _pwdController.text == "") {
                        Fluttertoast.showToast(
                            msg: "Invalid pwd!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        return;
                      }
                      setState(() {
                        isLoging = true;
                      });

                      AuthApi _authapi = AuthApi();
                      try {
                        Map data = await _authapi.doLogin(
                          pwd: "${_pwdController.text}",
                          shopownerphone: "${_phoneController.text}",
                        );
                        print(
                            "${data}****************************************---------------------");

                        if (data['ResponseCode'] == "200") {
                          print('object');
                          userCred.addUserId(data["id"]);
                          Future.delayed(Duration(seconds: 0), () {
                            Navigator.of(context).pushNamed(
                              '/shopditels',
                            );

                            print(
                                "${userCred.getUserId()}----------------------hemant");
                            print(data);
                          });

                          Fluttertoast.showToast(
                              msg: "${data['ResponseMsg']}",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        } else {
                          setState(() {
                            isLoging = false;
                          });
                          Fluttertoast.showToast(
                              msg: " ${data['ResponseMsg']}! ",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                          setState(() {
                            isLoging = false;
                          });
                        }
                      } catch (e) {}
                      // Navigator.pushReplacementNamed(context, '/main');
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.orange,
                        // border: Border.all(color: Colors.blue, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(1, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Text(
                        "LOG IN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/signp");
                          },
                          child: Row(
                            children: [
                              Icon(Icons.person_add),
                              Text(
                                "   Create Account",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[600],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/offerPage");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.local_offer),
                              Text(
                                "   Offer",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[600],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person_add),
                            Text(
                              "   Sent Feedback",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey[600],
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

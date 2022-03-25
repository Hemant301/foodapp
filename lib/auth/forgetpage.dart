import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodapp/api/authapi.dart';
import 'package:foodapp/const.dart/textfid.dart';
import 'package:foodapp/consts/blod.dart';

TextEditingController _phoneController = TextEditingController();

TextEditingController _pwdController = TextEditingController();

class ForgetePage extends StatefulWidget {
  const ForgetePage({Key? key}) : super(key: key);

  @override
  State<ForgetePage> createState() => _ForgetePageState();
}

class _ForgetePageState extends State<ForgetePage> {
  bool isLoging = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.network(
            "https://img.freepik.com/free-vector/man-with-pot-golds_1308-26811.jpg?w=740",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2 - 50,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Forget",
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
                      "Ge quickly to manage orders",
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
                          Map data = await _authapi.forget(
                            pwd: "${_pwdController.text}",
                            mobile: "${_phoneController.text}",
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
                              offset:
                                  Offset(1, 3), // changes position of shadow
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
                  ]))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:foodapp/api/authapi.dart';
import 'package:foodapp/const.dart/textfid.dart';

TextEditingController _nameController = TextEditingController();
TextEditingController _phoneController = TextEditingController();
TextEditingController _relerColdeController = TextEditingController();
TextEditingController _pwdController = TextEditingController();

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey[200],
              height: MediaQuery.of(context).size.width / 2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "SIGN UP",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Create an\naccount with the\nnew phone",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/orgerj.png",
                            height: MediaQuery.of(context).size.width / 2,
                            width: MediaQuery.of(context).size.width / 1.6,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Image.network(
                        'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+91',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 25,
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width - 120,
                        child: TextFormField(
                          controller: _phoneController,
                          decoration:
                              InputDecoration(hintText: "Mobile Number"),
                        ),
                      )
                      // )
                    ],
                  ),
                  TiextFormFilds(
                    hinttext: "Name",
                    controller: _nameController,
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  SizedBox(
                    height: 15,
                  ),
                  TiextFormFilds(
                    hinttext: "Password",
                    controller: _pwdController,
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  TiextFormFilds(
                    hinttext: "Referral code (optional)",
                    controller: _relerColdeController,
                  ),
                  SizedBox(
                    height: 60,
                  ),

                  InkWell(
                    onTap: () async {
                      if (_nameController.text == "" ||
                          _nameController.text == "") {
                        Fluttertoast.showToast(
                            msg: "Invalid Name!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        return;
                      } else if ((_phoneController.text).length <= 9) {
                        Fluttertoast.showToast(
                            msg: "Invalid Phone No!",
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
                            msg: "Invalid Password!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        return;
                      }
                      // setState(() {
                      //   isLoading = true;
                      // });

                      AuthApi _authapi = AuthApi();
                      try {
                        Map data = await _authapi.doSugnup(
                            name: "${_nameController.text}",
                            pwd: "${_pwdController.text}",
                            phone: "${_phoneController.text}",
                            refralcode: "${_relerColdeController.text}");

                        // print(data);

                        if (data['ResponseCode'] == "200") {
                          // setState(() {
                          //   isLoading = false;
                          // });
                          Future.delayed(Duration(seconds: 0), () {
                            Navigator.of(context).pushNamed('/otp', arguments: {
                              'ACCId': data["id"],
                              'phone': "${_phoneController.text}"
                            });
                            print(data);
                          });
                          Fluttertoast.showToast(
                              msg: "Verify OTP!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        } else {
                          Fluttertoast.showToast(
                              msg: " ${data["ResponseMsg"]}! ",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                          // setState(() {
                          //   isLoading = false;
                          // });
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
                        "SIGN UP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

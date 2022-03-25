import 'dart:convert';

import 'package:foodapp/consts/constants.dart';

// import 'package:http/http.dart' show Client, Response;
import 'package:http/http.dart' as http;

class AuthApi {
  Future<dynamic> doSugnup(
      {String name = "",
      String pwd = "",
      String refralcode = "",
      String phone = ""}) async {
    var client = http.Client();
    try {
      final response = await client.post(Uri.parse("${base}e_reg_user.php"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({
            "name": name,
            "mobile": phone,
            "password": pwd,
            "ccode": "91",
            "refercode": refralcode,
          }));
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
        throw "Somethiing went wrong";
      }
    } catch (e) {
      print(e);
      throw "Somethiing went wrong";
    } finally {
      client.close();
    }
  }

  Future<dynamic> doSugnupvERIFY({String otp = "", String accid = ""}) async {
    var client = http.Client();
    try {
      final response = await client.post(Uri.parse("${base}e_reg_user.php"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({
            "otp": otp,
            "id": accid,
          }));
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.body}.');
        throw 'somehting went wrong';
      }
    } catch (e) {
      print(e);
      throw 'somehting went wrong';
    } finally {
      client.close();
    }
  }

  Future<dynamic> doLogin({
    String pwd = "",
    String shopownerphone = "",
  }) async {
    var client = http.Client();
    try {
      final response = await client.post(Uri.parse("${base}e_login_user.php"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({"mobile": shopownerphone, "password": pwd}));
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
        throw "Somethiing went wrong";
      }
    } catch (e) {
      print(e);
      throw "Somethiing went wrong";
    } finally {
      client.close();
    }
  }

  Future<dynamic> forget({
    String pwd = "",
    String mobile = "",
  }) async {
    var client = http.Client();
    try {
      final response = await client.post(
          Uri.parse("${base}e_forget_password.php"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({"mobile": mobile, "password": pwd}));
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body) as Map;
      } else {
        print('Request failed with status: ${response.statusCode}.');
        throw "Somethiing went wrong";
      }
    } catch (e) {
      print(e);
      throw "Somethiing went wrong";
    } finally {
      client.close();
    }
  }
}

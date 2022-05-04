import 'dart:convert';

import 'package:foodapp/consts/constants.dart';
import 'package:http/http.dart' as http;

class HomeApi {
  var client = http.Client();
  Future<dynamic> fetchHomedata() async {
    try {
      final response = await client.post(
          Uri.parse("${base}eapi/e_home_data.php"),
          headers: {'Content-type': "application/json"},
          body: jsonEncode(
              {"uid": "1", "lats": "23.305447", "longs": "85.3096"}));
      if (response.statusCode == 200) {
        // print(response.body);
        return response;
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      print(e);
    } finally {}
  }
}

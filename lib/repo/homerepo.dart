import 'dart:convert';

import 'package:foodapp/api/homeapi.dart';
import 'package:foodapp/modal/homemodal.dart';

class HomeRepo {
  HomeApi homeApi = HomeApi();
  Future<HomeModal> fetchHomedata() async {
    final response = await homeApi.fetchHomedata();
    var jsonResponse = jsonDecode(response.body) as Map;
    return HomeModal(jsonResponse);
  }
}

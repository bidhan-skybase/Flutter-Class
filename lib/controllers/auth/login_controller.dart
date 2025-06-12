import 'dart:convert';

import 'package:demoapp/constant/api.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  login() async {
    var uri = Uri.parse(Api.loginUrl);
    // var headers = {'Content-Type': 'application/json'};
    var body = {"username": username.text, "password": password.text};
    print(body);
    http.Response response = await http.post(uri, body: body);
    dynamic data = json.decode(response.body);
    print(data);
  }
}

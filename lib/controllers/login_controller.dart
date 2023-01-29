// ignore_for_file: avoid_print, unnecessary_nullable_for_final_variable_declarations, prefer_const_constructors

import 'dart:convert';

import 'package:penggajian/pages/auth/utils/api_endpoints.dart';
import 'package:penggajian/pages/nav_homepage/nav_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //* Save Token
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginWithEmail() async {
    try {
      var headers = {'Content-Type': 'application/json'};

      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.loginEmail);

      Map body = {
        'email': emailController.text.trim(),
        'password': passwordController.text,
      };

      http.Response response = await http.post(
        url,
        body: jsonEncode(body),
        headers: headers,
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['meta']['code'] == 200) {
          var token = json['data']['access_token'];
          print(token);
          final SharedPreferences? prefs = await _prefs;

          await prefs?.setString('token', token);

          emailController.clear();
          passwordController.clear();
          Get.off(HomePage());
        } else {
          throw jsonDecode(response.body)["message"] ?? "Unknown Error Occured";
        }
      } else {
        throw jsonDecode(response.body)["message"] ?? "Unknown Error Occured";
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: Text('Error'),
              contentPadding: EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}

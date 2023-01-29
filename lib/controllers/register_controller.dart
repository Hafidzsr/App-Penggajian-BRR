// ignore_for_file: avoid_print, unnecessary_nullable_for_final_variable_declarations, prefer_const_constructors

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:penggajian/pages/auth/utils/api_endpoints.dart';
import 'package:penggajian/pages/nav_homepage/nav_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;

  //* Save Token
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail(File? image) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var url = Uri.parse(
          ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.registerEmail);
      Map body = {
        'name': nameController.text,
        'company': companyController.text,
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

          await uploadImage(image: image!, token: token);
          print(token);
          final SharedPreferences? prefs = await _prefs;
          await prefs?.setString('company', companyController.text);
          await prefs?.setString('token', token);
          nameController.clear();
          emailController.clear();
          passwordController.clear();

          //* Navigate to homepage
          Get.to(
            HomePage(),
          );
        } else {
          throw jsonDecode(response.body)['meta']["message"] ??
              "Unknown Error Occured";
        }
      } else {
        throw jsonDecode(response.body)['meta']["message"] ??
            "Unknown Error Occured";
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

  //* Upload Image
  uploadImage({required File image, required String token}) async {
    // Get the file name
    // String fileName = imageFile.path.split('/').last;
    try {
      isLoading.value = true;
      var request = http.MultipartRequest(
          'POST', Uri.parse('https://pay.mjcreativa.com/api/user/photo'));
      print('image file: $image');
      print('file path: ${image.path}');
      var file = await http.MultipartFile.fromPath('file', image.path);

      request.files.add(file);
      request.headers['Authorization'] = 'Bearer $token';

      var response = await request.send();
      // print('response: $response');
      if (response.statusCode == 200) {
        var responseData = await response.stream.bytesToString();
        var data = jsonDecode(responseData);
        log('data $data');
        final SharedPreferences? prefs = await _prefs;

        await prefs?.setString('profileUrl', data['data'][0]);

        print(data);
      } else {
        print('error uploading image');
        print(response.reasonPhrase);
      }
      // return response;
    } catch (e) {
      print('error $e');
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }
}

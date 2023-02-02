// ignore_for_file: unnecessary_nullable_for_final_variable_declarations, await_only_futures, avoid_print

import 'dart:convert';
import 'dart:developer';

import 'package:penggajian/models/employee_model.dart';
import 'package:penggajian/pages/nav_homepage/nav_home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class EmployeeController extends GetxController {
  var isLoading = false.obs;
  List<EmployeeModel> employeeModel = <EmployeeModel>[].obs;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  var token = ''.obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController nipController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController accNumberController = TextEditingController();
  TextEditingController salaryController = TextEditingController();

  //* Absent
  TextEditingController dateInput = TextEditingController();

  List multipleSelectedHarian = [];

  List checkListItemsHarian = [
    {
      "id": 0,
      "value": false,
      "title": "Senin",
    },
    {
      "id": 1,
      "value": false,
      "title": "Selasa",
    },
    {
      "id": 2,
      "value": false,
      "title": "Rabu",
    },
    {
      "id": 3,
      "value": false,
      "title": "Kamis",
    },
    {
      "id": 4,
      "value": false,
      "title": "Jumat",
    },
    {
      "id": 5,
      "value": false,
      "title": "Sabtu",
    },
  ];

  List multipleSelectedLembur = [];

  List checkListItemsLembur = [
    {
      "id": 0,
      "value": false,
      "title": "Minggu",
    },
    {
      "id": 1,
      "value": false,
      "title": "Senin",
    },
    {
      "id": 2,
      "value": false,
      "title": "Selasa",
    },
    {
      "id": 3,
      "value": false,
      "title": "Rabu",
    },
    {
      "id": 4,
      "value": false,
      "title": "Kamis",
    },
    {
      "id": 5,
      "value": false,
      "title": "Jumat",
    },
  ];
  //*

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      final SharedPreferences? prefs = await _prefs;

      token.value = (await prefs?.getString('token'))!;
      isLoading(true);
      http.Response response = await http.get(
          Uri.tryParse('https://pay.mjcreativa.com/api/employee')!,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          });
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);
        print(result);

        employeeModel.addAll(
            RxList<Map<String, dynamic>>.from(result['data']['data'])
                .map((e) => EmployeeModel.fromJson(e))
                .toList());
      } else {
        print(response.body);
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }

  addEmployee() async {
    try {
      print('token: $token');

      var body = {
        'name': nameController.text.trim(),
        'nip': nipController.text.trim(),
        'address': addressController.text.trim(),
        'phoneNumber': phoneController.text.trim(),
        'accNumber': accNumberController.text.trim(),
        'salary': salaryController.text.trim()
      };

      print(body);

      http.Response response = await http.post(
        Uri.parse('https://pay.mjcreativa.com/api/employee/add'),
        body: jsonEncode(body),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['meta']['code'] == 200) {
          log('inserted success');
          employeeModel.clear();
          nameController.clear();
          nipController.clear();
          addressController.clear();
          phoneController.clear();
          accNumberController.clear();
          salaryController.clear();
          fetchData();
          Get.off(HomePage());
        } else {
          print('meta code code not 200');
          throw jsonDecode(response.body)['meta']["message"] ??
              "Unknown Error Occured";
        }
      } else {
        print('response status code not 200');
        throw jsonDecode(response.body)['meta']["message"] ??
            "Unknown Error Occured";
      }
    } catch (e) {
      print(e);
      Get.back();
    }
  }

  updateEmployee(int id) async {
    try {
      print('token: $token');

      var body = {
        'name': nameController.text.trim(),
        'nip': nipController.text.trim(),
        'address': addressController.text.trim(),
        'phoneNumber': phoneController.text.trim(),
        'accNumber': accNumberController.text.trim(),
        'salary': salaryController.text.trim()
      };

      http.Response response = await http.put(
        Uri.parse('https://pay.mjcreativa.com/api/employee/update/$id'),
        body: jsonEncode(body),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['meta']['code'] == 200) {
          log('updated success');
          employeeModel.clear();
          nameController.clear();
          nipController.clear();
          addressController.clear();
          phoneController.clear();
          accNumberController.clear();
          salaryController.clear();
          fetchData();
          Get.off(HomePage());
        } else {
          print('meta code code not 200');
          throw jsonDecode(response.body)['meta']["message"] ??
              "Unknown Error Occured";
        }
      } else {
        print('response status code not 200');
        throw jsonDecode(response.body)['meta']["message"] ??
            "Unknown Error Occured";
      }
    } catch (e) {
      print(e);
      Get.back();
    }
  }

  deleteEmployee(int id) async {
    try {
      print('token: $token');

      http.Response response = await http.delete(
        Uri.parse('https://pay.mjcreativa.com/api/employee/delete/$id'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['meta']['code'] == 200) {
          log('deleted success');
          employeeModel.clear();
          nameController.clear();
          nipController.clear();
          addressController.clear();
          phoneController.clear();
          accNumberController.clear();
          salaryController.clear();
          fetchData();
          Get.off(HomePage());
        } else {
          print('meta code code not 200');
          throw jsonDecode(response.body)['meta']["message"] ??
              "Unknown Error Occured";
        }
      } else {
        print('response status code not 200');
        throw jsonDecode(response.body)['meta']["message"] ??
            "Unknown Error Occured";
      }
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}

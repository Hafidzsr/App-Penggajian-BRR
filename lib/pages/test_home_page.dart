// ignore_for_file: use_key_in_widget_constructors, unnecessary_nullable_for_final_variable_declarations, prefer_const_constructors, avoid_print

import 'package:penggajian/pages/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestHomePage extends StatefulWidget {
  @override
  State<TestHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<TestHomePage> {
  //* Show the entered token
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () async {
              final SharedPreferences? prefs = await _prefs;
              prefs?.clear();
              Get.offAll(
                LoginPage(),
              );
            },
            child: Text(
              'logout',
              style: TextStyle(color: Colors.white),
            ))
      ]),
      body: Center(
        child: Column(
          children: [
            Text('Welcome home'),
            TextButton(
                onPressed: () async {
                  final SharedPreferences? prefs = await _prefs;
                  print(prefs?.get('token'));
                },
                child: Text('print token'))
          ],
        ),
      ),
    );
  }
}

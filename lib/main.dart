// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penggajian/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
    );
  }
}

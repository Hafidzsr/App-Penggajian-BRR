// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'dart:async';

import 'package:penggajian/pages/onboarding_page.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Get.off(OnBoardingPage());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          color: whiteColor,
          width: Get.width,
          height: Get.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_brr.png',
                width: 350,
                height: 175,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: unused_import, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo_brr.png',
            width: 257,
            height: 136,
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ScrollablePhotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: [
        Image.asset(
          'assets/images/get_started1.png',
          width: 300,
          fit: BoxFit.contain,
        ),
        Image.asset(
          'assets/images/get_started2.png',
          width: 300,
          fit: BoxFit.contain,
        ),
        Image.asset(
          'assets/images/get_started3.png',
          width: 300,
          fit: BoxFit.contain,
        ),
        Image.asset(
          'assets/images/get_started4.png',
          width: 300,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}

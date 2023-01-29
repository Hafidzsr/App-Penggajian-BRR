// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 31,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  child: InkWell(
                    onTap: () {
                      // * Get Back to settings
                      Get.back();
                    },
                    child: Image.asset(
                      'assets/icons/arrow_back.png',
                      width: 8,
                      height: 16,
                    ),
                  ),
                ),
                SizedBox(
                  width: 23,
                ),
                Text(
                  'Informasi Aplikasi',
                  style: blackTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                      boxShadow: kElevationToShadow[4],
                    ),
                    width: 328,
                    height: 313,
                    child: Image.asset(
                      'assets/images/logo_brr.png',
                    ),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Text(
                    'Aplikasi penggajian ini merupakan sebuah solusi\nuntuk sistem penggajian CV. Bintang Rezky\nRamadhan. Aplikasi ini juga ditujukan untuk\nmemenuhi tugas proyek Mata Kuliah\nPengembangan Aplikasi Mobile dengan dosen\npengampu Reza Ilyasa M.Kom.',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

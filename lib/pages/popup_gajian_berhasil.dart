// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:penggajian/theme.dart';

class PopUpGajiBerhasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/popup_gaji_berhasil.png',
                width: 287,
                height: 257,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Gaji Periode 25 OCT, 2022\nSebesar Rp. 2.000.000,-\nBerhasil dibayar!',
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 138,
              height: 33,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: redColor,
                ),
                child: Text(
                  'Kembali',
                  style: whiteTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

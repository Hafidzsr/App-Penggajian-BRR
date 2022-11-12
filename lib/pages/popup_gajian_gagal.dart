// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:penggajian/theme.dart';

class PopUpGajiGagal extends StatelessWidget {
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
                'assets/images/popup_gaji_gagal.png',
                width: 287,
                height: 257,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Transaksi Gajian Gagal',
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Periksa jaringan internet anda\ndan coba lagi',
              style: greyTextStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 138,
              height: 33,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: redColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
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

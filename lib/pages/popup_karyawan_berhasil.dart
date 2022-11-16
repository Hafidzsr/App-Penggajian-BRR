// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:penggajian/theme.dart';

class PopUpKaryawanBerhasil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/popup_karyawan_berhasil.png',
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Data Karyawan\nberhasil ditambahkan',
              style: blackTextStyle.copyWith(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Tekan tombol kembali\nuntuk melanjutkan proses',
              style: greyTextStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 32,
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

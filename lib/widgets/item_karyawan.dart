// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:penggajian/models/karyawan.dart';
import 'package:penggajian/theme.dart';

class ItemKaryawan extends StatelessWidget {
  final Karyawan karyawan;
  ItemKaryawan(this.karyawan);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icons/icon_karyawan.png',
          width: 28,
        ),
        SizedBox(
          width: 28,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${karyawan.nama}',
              style: blackTextStyle.copyWith(
                fontSize: 15,
              ),
            ),
            Text(
              '${karyawan.noHp}',
              style: greyTextStyle.copyWith(
                fontSize: 10,
              ),
            )
          ],
        ),
      ],
    );
  }
}

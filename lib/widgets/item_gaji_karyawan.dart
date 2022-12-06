// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, unnecessary_string_interpolations, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:penggajian/models/karyawan.dart';
import 'package:penggajian/theme.dart';

class ItemGajiKaryawan extends StatelessWidget {
  final Karyawan karyawanGaji;
  ItemGajiKaryawan(this.karyawanGaji);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icons/icon_karyawan.png',
          width: 28,
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${karyawanGaji.namaPanggilan}',
                style: blackTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                '${karyawanGaji.noHp}',
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 62,
        ),
        Text(
          'Rp. 2.000.000,-',
          style: blackTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:penggajian/theme.dart';
import 'package:penggajian/widgets/item_absensi_karyawan.dart';

class AbsensiPage extends StatefulWidget {
  @override
  State<AbsensiPage> createState() => _AbsensiPageState();
}

class _AbsensiPageState extends State<AbsensiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 140,
                decoration: BoxDecoration(
                  color: redColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudahkah anda\nmengisi data\nabsensi karyawan?',
                      style: whiteTextStyle.copyWith(
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/images/illu_absensi.png',
                      width: 120,
                      height: 120,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: kElevationToShadow[4],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 22,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data Karyawan',
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      ItemAbsensiKaryawan(),
                      SizedBox(
                        height: 20,
                      ),
                      ItemAbsensiKaryawan(),
                      SizedBox(
                        height: 20,
                      ),
                      ItemAbsensiKaryawan(),
                      SizedBox(
                        height: 20,
                      ),
                      ItemAbsensiKaryawan(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

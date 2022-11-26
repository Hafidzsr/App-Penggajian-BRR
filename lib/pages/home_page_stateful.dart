// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:penggajian/models/karyawan.dart';
import 'package:penggajian/pages/tambah_karyawan.dart';
import 'package:penggajian/theme.dart';
import 'package:penggajian/widgets/item_karyawan.dart';

class HomePageStateful extends StatefulWidget {
  @override
  State<HomePageStateful> createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: kElevationToShadow[4],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 50,
                    left: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Punya Karyawan\nBaru?',
                        style: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 90,
                        ),
                        child: Container(
                          height: 127,
                          child: Image.asset(
                            'assets/images/illu_homepage.png',
                            width: 182,
                            height: 127,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 138,
                        height: 33,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TambahKaryawan(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: redColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Tambah Karyawan',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/icons/icon_forward.png',
                                width: 6,
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Data Karyawan',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ItemKaryawan(
                Karyawan(
                  id: 1,
                  nama: 'Hafidz Surya Ramadhan',
                  noHp: '081234567890',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ItemKaryawan(
                Karyawan(
                  id: 2,
                  nama: 'Hafidz Surya Ramadhan',
                  noHp: '081234567890',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ItemKaryawan(
                Karyawan(
                  id: 3,
                  nama: 'Hafidz Surya Ramadhan',
                  noHp: '081234567890',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ItemKaryawan(
                Karyawan(
                  id: 4,
                  nama: 'Surya Ramadhan Hafidz',
                  noHp: '08123487237483',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ItemKaryawan(
                Karyawan(
                  id: 5,
                  nama: 'Ramadhan Surya Hafidz',
                  noHp: '0812387639234',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/icon_nav_home.png',
              width: 20,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/icon_nav_absensi.png',
              width: 20,
            ),
            label: 'Absensi',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/icon_nav_gaji.png',
              width: 20,
            ),
            label: 'Gaji',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/icon_nav_pengaturan.png',
              width: 20,
            ),
            label: 'Pengaturan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: redColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

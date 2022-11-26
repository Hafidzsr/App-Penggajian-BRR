// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:penggajian/theme.dart';

import '../models/karyawan.dart';
import '../widgets/item_karyawan.dart';

class GajiKaryawan extends StatefulWidget {
  @override
  State<GajiKaryawan> createState() => _GajiKaryawanState();
}

class _GajiKaryawanState extends State<GajiKaryawan> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: 24,
          ),
          child: ListView(
            children: [
              Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '25 OKT, 2022',
                  style: blackTextStyle.copyWith(
                    fontSize: 15,
                  ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                Container(
                  width: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                      ),
                    color: lightGreyColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 77,
                      ),
                      Padding(
                        
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Gaji',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 10,
                                    ),
                                    ),
                                    SizedBox(
                                      height: 9,
                                    ),
                                    Text(
                                      'Rp. 100.000,-',
                                      style: blackTextStyle.copyWith(
                                        fontSize: 15,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                   Container(
                            width: 138,
                            height: 33,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: redColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'Bayar',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 38,
                                  ),
                                  Image.asset(
                                    'assets/icons/icon_forward.png',
                                    width: 6,
                                    height: 12,
                                  ),
                                ],
                              ),
                            )),
                                   
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 62,
                             ),
                              Container(
                                decoration: BoxDecoration(
                            color: whiteColor,
                              borderRadius: BorderRadius.circular(15),
                                ),
                               width: 111,
                               height: 108,
                               
                               child: Image.asset(
                                 'assets/images/illu_gaji.png',
                                 width: 146,
                                 height: 93,
                                 ), 
                              ),
                          ],  
                        ),  
                      ),
                      SizedBox(
                        height: 56,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          ),
                        child: Container(
                           decoration: BoxDecoration(
                            color: whiteColor,
                              borderRadius: BorderRadius.circular(15),
                                boxShadow: kElevationToShadow[4],
                           ),  
                                height: 371,
                                width: 328,
                                
                                
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 19,
                                      ),
                                      Text(
                                        'Daftar Karyawan',
                                        style: blackTextStyle.copyWith(
                                          fontSize: 15,
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
                      ),
                      
                    ],
                  ),
                ),
                
              ],
            ),
          ]),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/icon_nav_home.png',
              width: 20,
            ),
            label: 'Home',
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
            label: 'School',
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
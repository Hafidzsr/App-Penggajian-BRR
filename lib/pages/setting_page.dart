// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:penggajian/pages/application_information.dart';
import 'package:penggajian/pages/home_page_stateful.dart';
import 'package:penggajian/pages/login_page.dart';
import 'package:penggajian/pages/profil_perusahaan.dart';
import 'package:penggajian/theme.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
        child: Column(
          children: [
            Container(
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: redColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: whiteColor,
                            ),
                            width: 50,
                            height: 50,
                            child: Image.asset(
                              'assets/images/logo_brr.png',
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Aplikasi Penggajian Karyawan\nCV. Bintang Rezky Ramadhan',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        color: whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ApplicationInformation(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Informasi Aplikasi',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: blackColor,
                                  thickness: 1,
                                  indent: 0,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ApplicationInformation(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Profil Perusahaan',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: blackColor,
                                  thickness: 1,
                                  indent: 0,
                                ),
                                SizedBox(
                                  height: 114,
                                ),
                                Center(
                                  child: Container(
                                    width: 138,
                                    height: 33,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginPage(),
                                          ),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: redColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                      child: Text(
                                        'Logout',
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
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

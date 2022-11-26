import 'package:flutter/material.dart';
import 'package:penggajian/pages/home_page_stateful.dart';
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
                      padding: const EdgeInsets.only(
                        left: 16
                      ),
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
                      width: 600,
                      height: 500,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  // ignore: sort_child_properties_last
                                  child: Text(
                                    'Informasi Aplikasi',
                                    style: blackTextStyle.copyWith(fontSize: 12),
                                    ),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.black,
                                          ),
                                          )
                                    ),
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                Container(
                                  // ignore: sort_child_properties_last
                                  child: Text(
                                    'Profil Perusahaan',
                                    style: blackTextStyle.copyWith(fontSize: 12),
                                    ),
                                    decoration: const BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.black,
                                          ),
                                          )
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
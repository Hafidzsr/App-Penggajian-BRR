// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:penggajian/pages/nav_absensi/absensi_page.dart';
import 'package:penggajian/pages/nav_gaji/gaji_page.dart';
import 'package:penggajian/pages/nav_homepage/home.dart';
import 'package:penggajian/pages/nav_settings/settings.dart';
import 'package:penggajian/theme.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  

  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    AbsensiPage(),
    GajiPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: blackColor.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: redColor,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Beranda',
                ),
                GButton(
                  icon: Icons.group_add_outlined,
                  text: 'Absensi',
                ),
                GButton(
                  icon: Icons.attach_money_outlined,
                  text: 'Gaji',
                ),
                GButton(
                  icon: Icons.settings_outlined,
                  text: 'Pengaturan',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

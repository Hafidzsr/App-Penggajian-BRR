// ignore_for_file: unnecessary_nullable_for_final_variable_declarations, sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors, await_only_futures

import 'package:penggajian/pages/auth/login.dart';
import 'package:penggajian/pages/nav_settings/app_information.dart';
import 'package:penggajian/pages/nav_settings/company_profile.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String? imageUrl = '';
  String? company = '';

  getImageUrl() async {
    final SharedPreferences? prefs = await _prefs;
    imageUrl = await prefs?.getString('profileUrl') ?? '';
    company = await prefs?.getString('company') ?? '';
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getImageUrl();
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
                          imageUrl == ''
                              ? Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: whiteColor,
                                  ),
                                  width: 50,
                                  height: 50,
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          'https://pay.mjcreativa.com//storage/$imageUrl',
                                        )),
                                    color: whiteColor,
                                  ),
                                  width: 50,
                                  height: 50,
                                ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            company!,
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
                                    //* to detail informasi aplikasi
                                    Get.to(
                                      AppInformation(),
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
                                    //* to detail informasi aplikasi
                                    Get.to(
                                      CompanyProfile(),
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
                                      onPressed: () async {
                                        //* back to login page
                                        final SharedPreferences? prefs =
                                            await _prefs;
                                        prefs?.clear();
                                        Get.offAll(
                                          LoginPage(),
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
    );
  }
}

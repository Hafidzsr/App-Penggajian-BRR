// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use, unused_import

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:penggajian/pages/application_information.dart';
import 'package:penggajian/pages/gaji_page.dart';
import 'package:penggajian/pages/home_page_stateful.dart';
import 'package:penggajian/pages/home_page_stateless.dart';
import 'package:penggajian/pages/loading_page_pembayaran.dart';
import 'package:penggajian/pages/profil_perusahaan.dart';
import 'package:penggajian/pages/register_page.dart';
import 'package:penggajian/pages/setting_page.dart';
import 'package:penggajian/theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                height: 274,
                child: Image.asset(
                  'assets/images/illu_login.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  'Login',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),

                // NOTE: FORM LOGIN
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Email ID',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Password',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfilPerusahaan(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text.rich(
                        TextSpan(
                          text: 'Belum punya akun?',
                          style: greyTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: ' Mendaftar',
                              style: redTextStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage(),
                                    ),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

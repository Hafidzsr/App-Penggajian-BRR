// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:penggajian/pages/login_page.dart';
import 'package:penggajian/theme.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    width: 300,
                    height: 226,
                    child: Image.asset(
                      'assets/images/illu_register.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                Text(
                  'Daftar',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                // NOTE: FORM REGISTER
                Column(
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
                        hintText: 'Nomor Hp',
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
                        hintText: 'Nama Lengkap',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 300,
                      height: 50,
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
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                        ),
                        child: Text(
                          'Mendaftar',
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

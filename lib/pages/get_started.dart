// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:penggajian/pages/login_page.dart';
import 'package:penggajian/pages/register_page.dart';
import 'package:penggajian/theme.dart';
import 'package:penggajian/widgets/scrollable_photos.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Aplikasi Penggajian CV.BRR',
                style: blackTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),

            //NOTE: Scrollable Photos
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Container(
                height: 300,
                width: 300,
                child: ScrollablePhotos(),
              ),
            ),
            SizedBox(
              height: 245,
            ),

            // NOTE: Button Login & Register
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 147,
                    height: 37,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      color: buttonGreyColor,
                      child: Text(
                        'Daftar',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 147,
                    height: 37,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      color: redColor,
                      child: Text(
                        'Login',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

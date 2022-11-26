// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:penggajian/theme.dart';

class ItemAbsensiKaryawan extends StatelessWidget {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                color: whiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 28,
                  right: 18,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 12,
                            height: 24,
                            child: Image.asset(
                              'assets/icons/icon_x.png',
                              width: 12,
                              height: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Normal :',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Row(
        children: [
          Image.asset(
            'assets/icons/icon_karyawan.png',
            width: 28,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hafidz Surya Ramadhan',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Text(
                    'Hadir',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '          :',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      6',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    'Lembur',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      :',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '      3',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

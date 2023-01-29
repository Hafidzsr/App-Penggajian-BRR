// ignore_for_file: must_be_immutable, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:penggajian/models/employee_model.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';

class ItemGajiKaryawan extends StatelessWidget {
  EmployeeModel employeeModel;
  ItemGajiKaryawan(this.employeeModel);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/icons/icon_karyawan.png',
          width: 28,
        ),
        Container(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                employeeModel.name,
                style: blackTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
              Text(
                employeeModel.phoneNumber,
                style: greyTextStyle.copyWith(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 4,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 62,
        ),
        Text(
          'Rp. 2.000.000,-',
          style: blackTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

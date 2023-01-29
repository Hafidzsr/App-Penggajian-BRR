// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:penggajian/models/employee_model.dart';
import 'package:penggajian/pages/nav_homepage/edit_karyawan.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemKaryawan extends StatelessWidget {
  EmployeeModel employeeModel;
  ItemKaryawan(this.employeeModel);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        EditKaryawan(employeeModel),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/icon_karyawan.png',
            width: 28,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
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
                height: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

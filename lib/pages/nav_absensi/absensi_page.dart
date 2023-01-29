// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:penggajian/controllers/employee_controller.dart';
import 'package:penggajian/pages/nav_absensi/widgets/item_absensi_karyawan.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AbsensiPage extends StatefulWidget {
  @override
  State<AbsensiPage> createState() => _AbsensiPageState();
}

class _AbsensiPageState extends State<AbsensiPage> {
  EmployeeController employeeController = Get.put(EmployeeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: Get.width - 20 * 2,
                  height: 140,
                  decoration: BoxDecoration(
                    color: redColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sudahkah anda\nmengisi data\nabsensi karyawan?',
                        style: whiteTextStyle.copyWith(
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/images/illu_absensi.png',
                        width: 120,
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                'Data Absensi Karyawan',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: Obx(
                  () => employeeController.employeeModel.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemCount: employeeController.employeeModel.length,
                          itemBuilder: (context, index) => ItemAbsensiKaryawan(
                              employeeController.employeeModel[index]),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

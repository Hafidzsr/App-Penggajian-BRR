// ignore_for_file: must_be_immutable, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:penggajian/controllers/employee_controller.dart';
import 'package:penggajian/pages/nav_homepage/tambah_karyawan_page.dart';
import 'package:penggajian/pages/nav_homepage/widgets/item_karyawan.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  EmployeeController employeeController = Get.put(EmployeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: Get.width - 30,
                  height: 300,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: kElevationToShadow[4],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      left: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Punya Karyawan\nBaru?',
                          style: greyTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 90,
                          ),
                          child: Container(
                            height: 127,
                            child: Image.asset(
                              'assets/images/illu_homepage.png',
                              width: 182,
                              height: 127,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 138,
                          height: 33,
                          child: ElevatedButton(
                            onPressed: () {
                              //* To Page Tambah Data Karyawan
                              Get.to(TambahKaryawan());
                            },
                            style: ElevatedButton.styleFrom(
                              primary: redColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Tambah Karyawan',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icons/icon_forward.png',
                                  width: 6,
                                  height: 12,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Data Karyawan',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Obx(
                  () => employeeController.employeeModel.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemCount: employeeController.employeeModel.length,
                          itemBuilder: (context, index) => ItemKaryawan(
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

// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:penggajian/controllers/employee_controller.dart';
import 'package:penggajian/pages/nav_gaji/widgets/item_gaji_karyawan.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BayarGaji extends StatefulWidget {
  @override
  State<BayarGaji> createState() => _BayarGajiState();
}

class _BayarGajiState extends State<BayarGaji> {
  EmployeeController employeeController = Get.put(EmployeeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 31,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/icons/arrow_back.png',
                        width: 8,
                        height: 16,
                      ),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      'Rincian',
                      style: blackTextStyle.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                  color: mediumGreyColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Gaji',
                                style: greyTextStyle.copyWith(
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                'Rp. 100.000,-',
                                style: blackTextStyle.copyWith(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Container(
                            width: 138,
                            height: 33,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: redColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'Bayar',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 38,
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
                          SizedBox(
                            height: 100,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //* Data from API
              Expanded(
                child: Obx(
                  () => employeeController.employeeModel.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          itemCount: employeeController.employeeModel.length,
                          itemBuilder: (context, index) => ItemGajiKaryawan(
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

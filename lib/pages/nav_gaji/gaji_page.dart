// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:penggajian/controllers/employee_controller.dart';
import 'package:penggajian/pages/nav_gaji/bayar_gaji_page.dart';
import 'package:penggajian/pages/nav_gaji/widgets/item_gaji_karyawan.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GajiPage extends StatefulWidget {
  @override
  State<GajiPage> createState() => _GajiPageState();
}

class _GajiPageState extends State<GajiPage> {
  EmployeeController employeeController = Get.put(EmployeeController());
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: 24,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030),
                    ).then((value) {
                      setState(() {
                        selectedDate = value!;
                      });
                    });
                  },
                  child: Center(
                    child: Text(
                      DateFormat.yMMMd().format(selectedDate),
                      // selectedDate.toString(),
                      style: blackTextStyle.copyWith(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),

                //* Widget Bayar Gaji
                Center(
                  child: Container(
                    width: Get.width - 20 * 2,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      color: lightGreyColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          height: 77,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            right: 16,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
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
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      width: 138,
                                      height: 33,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => BayarGaji(),
                                            ),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: redColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 38,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                width: 111,
                                height: 108,
                                child: Image.asset(
                                  'assets/images/illu_gaji.png',
                                  width: 146,
                                  height: 93,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                Text(
                  'Daftar Gaji Karyawan',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 16,
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
      ),
    );
  }
}

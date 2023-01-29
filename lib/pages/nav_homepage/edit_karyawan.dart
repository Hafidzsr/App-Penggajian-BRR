// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, avoid_print, prefer_const_constructors, sized_box_for_whitespace

import 'package:penggajian/controllers/employee_controller.dart';
import 'package:penggajian/models/employee_model.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditKaryawan extends StatefulWidget {
  EmployeeModel employeeModel;
  EditKaryawan(this.employeeModel);
  @override
  State<EditKaryawan> createState() => _EditKaryawanState();
}

class _EditKaryawanState extends State<EditKaryawan> {
  EmployeeController employeeController = Get.put(EmployeeController());

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print(widget.employeeModel.id);
      setState(() {
        employeeController.accNumberController.text =
            widget.employeeModel.accNumber;
        employeeController.addressController.text =
            widget.employeeModel.address;
        employeeController.nameController.text = widget.employeeModel.name;
        employeeController.nipController.text = widget.employeeModel.nip;
        employeeController.phoneController.text =
            widget.employeeModel.phoneNumber;
        employeeController.salaryController.text = widget.employeeModel.salary;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30,
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    employeeController.accNumberController.clear();
                    employeeController.addressController.clear();
                    employeeController.nameController.clear();
                    employeeController.nipController.clear();
                    employeeController.phoneController.clear();
                    employeeController.salaryController.clear();
                    Get.back();
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon_back.png',
                        width: 8,
                        height: 15,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Edit Data Karyawan',
                        style: blackTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
                TextField(
                  controller: employeeController.nipController,
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'NIP',
                    hintStyle: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  controller: employeeController.nameController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Nama',
                    hintStyle: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  controller: employeeController.accNumberController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'No Rekening',
                    hintStyle: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  controller: employeeController.salaryController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Gaji per hari',
                    hintStyle: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  controller: employeeController.phoneController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'No Hp',
                    hintStyle: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                  controller: employeeController.addressController,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'address',
                    hintStyle: greyTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 56,
                ),
                //* Edit data Karyawan
                Container(
                  width: 133,
                  height: 33,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          content: Container(
                            width: 300,
                            height: 270,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/alert_dialog.png',
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Apakah anda yakin?',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Anda akan meng-edit\ndata karyawan',
                                  style: greyTextStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: greyColor,
                                      ),
                                      child: Text(
                                        'Cancel',
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        employeeController.updateEmployee(
                                            widget.employeeModel.id);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: redColor,
                                      ),
                                      child: Text(
                                        'OK',
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
                      'Edit Data Karyawan',
                      style: whiteTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //* Delete Data Karyawan
                Container(
                  width: 133,
                  height: 33,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          content: Container(
                            width: 300,
                            height: 270,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/alert_dialog.png',
                                  width: 100,
                                  height: 100,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Apakah anda yakin?',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Anda akan menghapus\ndata karyawan',
                                  style: greyTextStyle.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: greyColor,
                                      ),
                                      child: Text(
                                        'Cancel',
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        employeeController.deleteEmployee(
                                            widget.employeeModel.id);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: redColor,
                                      ),
                                      child: Text(
                                        'OK',
                                        style: whiteTextStyle.copyWith(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
                      'Hapus Data',
                      style: whiteTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
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

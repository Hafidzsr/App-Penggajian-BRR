// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, no_leading_underscores_for_local_identifiers, use_key_in_widget_constructors

import 'dart:io';

import 'package:penggajian/controllers/register_controller.dart';
import 'package:penggajian/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterController registerController = Get.put(RegisterController());

  //* obscure text
  bool _passwordVisible = false;

  //* image pick

  File? image;

  Future pickImage() async {
    final ImagePicker _picker = ImagePicker();
    //Pick an image
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    //Show the image
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redColor,
        title: Text(
          "Daftar",
          style: whiteTextStyle.copyWith(
            fontSize: 24,
            color: whiteColor,
          ),
        ),
      ),
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

                //* Image Picker
                Center(
                  child: image != null
                      ? Container(
                          width: 300,
                          height: 226,
                          child: Image.file(
                            image!,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(
                          width: 250,
                          height: 206,
                          child: Center(
                            child: Text(
                              'Tidak ada gambar ter upload',
                            ),
                          ),
                        ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    width: 125,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () async {
                        await pickImage();
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
                        'Ambil Foto',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 65,
                ),
                Text(
                  'Form Daftar',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                //* NOTE: FORM REGISTER
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: registerController.nameController,
                      style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Nama Lengkap',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: registerController.companyController,
                      style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Nama Perusahaan',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: registerController.emailController,
                      style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
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
                    TextFormField(
                      obscureText: !_passwordVisible,
                      controller: registerController.passwordController,
                      style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                _passwordVisible = !_passwordVisible;
                              },
                            );
                          },
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 50,
                        child: registerController.isLoading.value
                            ? CircularProgressIndicator()
                            : ElevatedButton(
                                onPressed: image != null
                                    ? () async {
                                        // await registerController.uploadImage(image!);
                                        registerController
                                            .registerWithEmail(image!);
                                      }
                                    : () {},
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



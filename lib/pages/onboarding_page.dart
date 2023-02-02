// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/onboarding.dart';
import 'package:penggajian/pages/auth/login.dart';
import 'package:penggajian/theme.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late int index;

  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 90.0,
                ),
                child: Image.asset(
                  'assets/images/illu_onboard1.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'GAJIAN BRO',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Selamat datang di Aplikasi GAJIAN BRO!',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Catat penggajianmu dengan aplikasi GAJIAN BRO untuk efektivitas anda',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 90.0,
                ),
                child: Image.asset(
                  'assets/images/illu_onboard2.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'WAKTU ADALAH UANG',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sudah saatnya untuk beralih ke pencatatan digital untuk efisiensi dan efektivitas',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.0,
            color: Colors.white,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 90.0,
                ),
                child: Image.asset(
                  'assets/images/illu_onboard3.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'MUDAH DIGUNAKAN',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'GAJIAN BRO for life',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  final width = 100.0;
  @override
  void initState() {
    super.initState();
    index = 0;
  }

  SizedBox _skipButton({void Function(int)? setIndex}) {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          borderRadius: defaultSkipButtonBorderRadius,
          color: redColor,
          child: InkWell(
            borderRadius: defaultSkipButtonBorderRadius,
            onTap: () {
              if (setIndex != null) {
                index = 2;
                setIndex(2);
              }
            },
            child: Padding(
              padding: defaultSkipButtonPadding,
              child: Text(
                'Skip',
                style: defaultSkipButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox get _signupButton {
    return SizedBox(
      width: width,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Material(
          borderRadius: defaultProceedButtonBorderRadius,
          color: redColor,
          child: InkWell(
            borderRadius: defaultProceedButtonBorderRadius,
            onTap: () {
              Get.to(LoginPage());
            },
            child: Padding(
              padding: defaultProceedButtonPadding,
              child: Text(
                'Login',
                style: defaultProceedButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Onboarding(
        pages: onboardingPagesList,
        onPageChange: (int pageIndex) {
          index = pageIndex;
        },
        footerBuilder: (context, dragDistance, pagesLength, setIndex) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 0.0,
                color: Colors.white,
              ),
            ),
            child: ColoredBox(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          indicatorDesign: IndicatorDesign.polygon(
                            polygonDesign: PolygonDesign(
                              polygon: DesignType.polygon_circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    index != pagesLength - 1
                        ? _skipButton(setIndex: setIndex)
                        : _signupButton,
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

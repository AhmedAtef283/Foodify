import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:e_comerce/core/constant/color.dart';
import 'package:e_comerce/view/widget/login_and_signup/logintexty.dart';
import 'package:e_comerce/view/widget/onboarding/custombutton.dart';
import 'package:e_comerce/view/widget/onboarding/customdotcontroller.dart';
import 'package:e_comerce/view/widget/onboarding/pageview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: ColorApp.primaryColor,
      body:  Column(
        children: [
          Expanded(
            flex: 3,
            child: PageViewOnBoarding(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  //dots
                  CustomDotController(),
                  Spacer(
                    flex: 3,
                  ),
                  //custom button
                  CustomButtonOnBoard(),
                  Spacer(
                    flex: 1,
                  ),
                  //login
                  LogInText('login'),
                  Spacer(
                    flex: 8,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

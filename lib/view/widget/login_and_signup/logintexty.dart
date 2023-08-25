import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:e_comerce/foodify_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../screen/login.dart';

class LogInText extends GetView<OnBoardingControllerImp> {
  final String text;
  const LogInText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => FoodifyHome());
      },
      child: Text(
        text,
        style: TextStyle(
          color: ColorApp.skipColor,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';

class MainTopRow extends GetView<OnBoardingControllerImp> {
  const MainTopRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 6,
        ),
        Image.asset(
          'assets/images/Group.png',
          width: 32,
        ),
        const Spacer(
          flex: 4,
        ),
        Text(
          'Skip',
          style: TextStyle(
            color: ColorApp.skipColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}

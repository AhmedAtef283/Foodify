import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:e_comerce/core/constant/color.dart';
import 'package:e_comerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: 400),
                    width: controller.currentPage == index ? 18 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: ColorApp.dotColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ));
  }
}

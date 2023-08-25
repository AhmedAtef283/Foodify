import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:e_comerce/view/screen/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 249, 136, 31),
              Color.fromARGB(255, 255, 118, 76),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: MaterialButton(
          highlightColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 80,
          ),
          textColor: Colors.white,
          onPressed: () {
            Get.to(const SignUp());
          },
          child: const Text(
            'Create an account',
          ),
        ));
  }
}

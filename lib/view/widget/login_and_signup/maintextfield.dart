import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainTextField extends GetView<OnBoardingControllerImp> {
  final String hintText;
  const MainTextField(this.hintText, {super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Card(
        elevation: 0,
        shape: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.grey[300]!,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

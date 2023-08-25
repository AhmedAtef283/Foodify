import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:e_comerce/core/constant/color.dart';
import 'package:e_comerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewOnBoarding extends GetView<OnBoardingControllerImp> {
  const PageViewOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.width / 10,
        ),
        Row(
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
            GestureDetector(
              onTap: () {
                controller.next();
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: ColorApp.skipColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
        Expanded(
          child: PageView.builder(
            controller: controller.pagecontroller,
            onPageChanged: (value) {
              controller.onPageChanged(value);
            },
            itemCount: onBoardingList.length,
            itemBuilder: (context, i) => Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width / 8,
                ),
                Text(
                  onBoardingList[i].title!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 10,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  // width: MediaQuery.of(context).size.width / 1.5,
                  // height: MediaQuery.of(context).size.width / 1.3,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 12,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:e_comerce/view/widget/login_and_signup/maintoprow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/onboardingcontroller.dart';
import '../../core/constant/color.dart';
import '../widget/login_and_signup/logintexty.dart';
import '../widget/login_and_signup/maintextfield.dart';
import '../widget/onboarding/custombutton.dart';
import '../widget/login_and_signup/googlesign.dart';

TextEditingController? emailaddress = TextEditingController();
TextEditingController? pass = TextEditingController();
var formKey1 = GlobalKey<FormState>();

class LogIn extends GetView<OnBoardingControllerImp> {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primaryColor,
      body: Form(
        key: formKey1,
        child: Column(
          children: [
            const Spacer(flex: 3),
            const MainTopRow(),
            const Spacer(flex: 1),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 44.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 10,
                    ),
                    const Text(
                      'Login to your account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 20,
                    ),
                    Text(
                      'Good to see you again, enter your details\nbelow to continue ordering.',
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorApp.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(flex: 3),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorApp.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
             MainTextField('Enter email', emailaddress),
            const Spacer(flex: 1),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorApp.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
             MainTextField('Enter password', pass),
            const Spacer(flex: 8),
            const GoogleSign(),
            const Spacer(flex: 1),
             CustomButtonOnBoard(),
            const Spacer(flex: 1),
             LogInText1('Login to my account' , emailaddress,pass,formKey1),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

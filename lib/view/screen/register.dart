import 'package:e_comerce/view/widget/login_and_signup/googlesign.dart';
import 'package:e_comerce/view/widget/login_and_signup/logintexty.dart';
import 'package:e_comerce/view/widget/login_and_signup/maintextfield.dart';
import 'package:e_comerce/view/widget/login_and_signup/maintoprow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/onboardingcontroller.dart';
import '../../core/constant/color.dart';
import '../widget/onboarding/custombutton.dart';


class SignUp extends GetView<OnBoardingControllerImp> {
   SignUp({super.key});
   var formKey = GlobalKey<FormState>();
  TextEditingController? emailaddress = TextEditingController();
  TextEditingController? password= TextEditingController();
  TextEditingController? confirmpassword= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primaryColor,
      body: Form(
        key: formKey,
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
                      'Create an account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 20,
                    ),
                    Text(
                      'Welcome friend, enter your details so lets get\nstarted in ordering food.',
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
             MainTextField('Enter password',password),
            const Spacer(
              flex: 1,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 12,
                    color: ColorApp.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
             MainTextField('Confirm Password',confirmpassword),
            const Spacer(flex: 8),
            const GoogleSign(),
            const Spacer(flex: 1),
            CustomButtonOnBoarding(
              formKey: formKey,
              emailaddress: emailaddress,
              passwordd: password,
              confirmpasswordd: confirmpassword,
            ),
            const Spacer(flex: 1),
            const LogInText('Login to my account'),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

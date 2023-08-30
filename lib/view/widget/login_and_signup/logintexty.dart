import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:e_comerce/foodify_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constant/color.dart';
import '../../screen/login.dart';
final user = FirebaseAuth.instance.currentUser;


class LogInText extends GetView<OnBoardingControllerImp> {
  final String text;
  const LogInText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        Get.to(() => LogIn());
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

class LogInText1 extends GetView<OnBoardingControllerImp> {
  TextEditingController? emailaddress = TextEditingController();
  TextEditingController? pass = TextEditingController();
  var formKey = GlobalKey<FormState>();

  final String text;
   LogInText1(this.text, this.emailaddress, this.pass, this.formKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        if(formKey.currentState!.validate()){
          try {

            final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: this.emailaddress!.text,
                password: this.pass!.text

            );
            if(this.emailaddress!.text == "ahmed.atef.saleh6@gmail.com" || this.emailaddress!.text == "aatef83156@gmail.com"){
              user?.updateDisplayName("Atef");
            }
            print(user!.displayName);
            Get.to(() => FoodifyHome());
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
              final snackBar = SnackBar(
                content: const Text("No user found for that email."),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print('No user found for that email.');
            } else if (e.code == 'wrong-password') {
              final snackBar = SnackBar(
                content: const Text("Wrong password provided for that user."),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);

              print('Wrong password provided for that user.');
            }
          }
        }

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

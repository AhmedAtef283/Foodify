import 'package:e_comerce/controller/onboardingcontroller.dart';
import 'package:e_comerce/foodify_home.dart';
import 'package:e_comerce/view/screen/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_and_signup/logintexty.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
   CustomButtonOnBoarding({super.key, this.confirmpasswordd, this.emailaddress,  this.passwordd ,required this.formKey});
   var formKey = GlobalKey<FormState>();
   TextEditingController? emailaddress =  TextEditingController();
   TextEditingController? passwordd = TextEditingController();
   TextEditingController? confirmpasswordd= TextEditingController();
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
          onPressed: () async {
            if(formKey.currentState!.validate()){
              print(this.emailaddress!.text);
              print(this.passwordd!.text);
              print(this.confirmpasswordd!.text);
              try {
                final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: this.emailaddress!.text,
                  password: this.passwordd!.text,

                );
                if(this.emailaddress!.text == "ahmed.atef.saleh6@gmail.com" || this.emailaddress!.text == "aatef83156@gmail.com"){
                  user?.updateDisplayName("Atef");
                }

                Get.to(const FoodifyHome());

              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  print('The password provided is too weak.');
                } else if (e.code == 'email-already-in-use') {
                  print('The account already exists for that email.');
                }
              } catch (e) {
                print(e);
              }
            }
            },

          child: const Text(
            'Create an account',
          ),
        ));
  }
}



class CustomButtonOnBoard extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoard({super.key});
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
              Get.to( SignUp());

          },
          child: const Text(
            'Create an account',
          ),
        ));
  }
}

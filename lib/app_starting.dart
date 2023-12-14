import 'package:e_comerce/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'foodify_home.dart';

int orangeColor = 0xffFF774C;

class LogoScreen extends StatefulWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  State<LogoScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<LogoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image(
            image: const AssetImage("assets/images/Group.png"),
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return OnBoarding();
                      }));
                    },
                    child: Text("Skip",
                        style: GoogleFonts.notoSansMultani(
                            color: Color(orangeColor),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

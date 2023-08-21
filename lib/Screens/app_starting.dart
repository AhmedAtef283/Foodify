

import 'package:flutter/material.dart';
import 'package:foodify/Screens/foodify_home.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}



class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Spacer(),
          Image(
          image: const AssetImage("assets/images/Group.png"),
            height: MediaQuery.of(context).size.height*0.5,
            width: MediaQuery.of(context).size.width*0.5,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return FoodifyHome();
                      }));
                    },
                    child:Text("Skip",
                        style: GoogleFonts.notoSansMultani(
                            color: Color(0xffFF774C),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)
                    ),
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

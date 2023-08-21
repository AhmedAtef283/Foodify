import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodifyHome extends StatelessWidget {
  const FoodifyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF7F7FB),
        bottomOpacity: 0,
        primary: false,
        shadowColor: Color(0xffF7FFB),

      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 30),
            child: Text("Enjoy Delicious food",style: GoogleFonts.notoSansMultani(
                color: Colors.black,
                fontSize: 25,
              fontWeight: FontWeight.bold
            )
            ),
          ),
        ],
      )
    );
  }
}

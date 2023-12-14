import 'package:e_comerce/app_starting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF7F7FB),
        shadowColor: Color(0xffF7FFB),
        elevation: 1,
        foregroundColor: Colors.white,
        centerTitle: true,
        title:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Delivery to",
                  style: GoogleFonts.notoSansMultani(
                    decoration: TextDecoration. underline,
                    color: Colors.black,
                    fontSize: 12,
                  ),

                ),
              ],
            ),
            Text("Zagazig , Egypt",
              style: GoogleFonts.notoSansMultani(
                color: Color(orangeColor),
                fontSize: 14,
              ),

            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(16),
                ),
                child:Image(
                  image: AssetImage("assets/images/image 2.png"),
                  fit: BoxFit.cover,
                )

            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'About App',
              style: GoogleFonts.notoSansHanunoo(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 22
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Millions of people around the world ask the same question everyday “What will I eat today?” and we make answering this question as simple as a click of a button!")
            ,
            SizedBox(
              height: 20,
            ),
            Text("Browse over 6000+ restaurants and thousands of visualized dishes in Egypt to discover & order the food you love. Whether you’re looking for delivery or dine-out restaurants, discover food by the dish you’re craving with specially curated food photos to visualize your next meal.")
          ],
        ),
      )
    );
  }
}

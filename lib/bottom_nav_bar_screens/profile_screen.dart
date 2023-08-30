import 'package:e_comerce/app_starting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Text(
                'App Developers',
                style: GoogleFonts.notoSansHanunoo(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Ahmed Atef Saleh',
                style: GoogleFonts.notoSansHanunoo(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              subtitle: Text(
                'Email: ahmed.atef.saleh6@gmail.com',
                style: GoogleFonts.notoSansHanunoo(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                ),

              ),
            ),
            ListTile(
              title: Text(
                'Norhan Ahmed',
                style: GoogleFonts.notoSansHanunoo(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              subtitle: Text(
                'Email: Na0703346@gmail.com',
                style: GoogleFonts.notoSansHanunoo(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Sara Dawood',
                style: GoogleFonts.notoSansHanunoo(
                    color: Colors.black,
                    fontSize: 16
                ),
              ),
              subtitle: Text(
                'Email: SaraDawood@gmail.com',
                style: GoogleFonts.notoSansHanunoo(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

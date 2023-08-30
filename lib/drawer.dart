import 'package:e_comerce/about_app.dart';
import 'package:e_comerce/app_starting.dart';
import 'package:e_comerce/view/widget/login_and_signup/logintexty.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavDrawer extends StatelessWidget  {

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(

        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Welcome Atef',
                      style: GoogleFonts.notoSansHanunoo(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'ahmed.atef.saleh6@gmail.com',
                      style: GoogleFonts.notoSansHanunoo(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10
                      ),
                    ),




                  ],
                ),
                Spacer(),
                Image(
                  image: AssetImage("assets/images/Screenshot 2023-08-30 062735.png"),
                  width: 80,
                  height: 100,
                  fit: BoxFit.fill,

                ),

              ],
            ),
            decoration: BoxDecoration(
                color: Color(orangeColor),
            ),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About App'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return AboutApp();
              }))


            },
          ),

        ],
      ),
    );
  }
}
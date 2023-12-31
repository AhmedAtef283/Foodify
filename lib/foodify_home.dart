import 'package:e_comerce/app_starting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_nav_bar_screens/home_screen.dart';
import 'bottom_nav_bar_screens/serach_screen.dart';
import 'bottom_nav_bar_screens/profile_screen.dart';
import 'drawer.dart';

int grayColor = 0xffDFE2E5;
int grayColorDark = 0xffC6C9CC;
int currentindex = 0;


class FoodifyHome extends StatefulWidget {
  const FoodifyHome({Key? key}) : super(key: key);

  @override
  State<FoodifyHome> createState() => _FoodifyHomeState();
}

List<dynamic> screens = [
  HomeScreen(),
  SearchScreen(),
  ProfileScreen(),
];

class _FoodifyHomeState extends State<FoodifyHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF7F7FB),
        appBar: AppBar(
          backgroundColor: Color(0xffF7F7FB),
          shadowColor: Color(0xffF7FFB),
          elevation: 0,
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
        drawer:NavDrawer(),

        body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined, color: Color(grayColorDark)),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined, color: Color(grayColorDark)),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: Color(grayColorDark)),
                label: "Profile"),
          ],
          currentIndex: currentindex,
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
          onTap: (int index) {
            setState(() {
              currentindex = index;
              print(currentindex);
            });
          },
          selectedFontSize: 16,
          unselectedFontSize: 12,
          fixedColor: Color(orangeColor),
          selectedIconTheme: IconThemeData(
            color: Color(orangeColor),
            size: 32,
          ),
        ));
  }
}

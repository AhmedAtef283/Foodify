import 'package:e_comerce/app_starting.dart';
import 'package:e_comerce/bottom_nav_bar_screens/serach_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.circular(16),
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu_rounded,color: Colors.black),
            ),

          ),
        ),
      ),
      body: loaded?
      ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 10,
        ),
        itemCount: jsonList?.length ?? 0,
        itemBuilder: (context, index) {
          var meal = jsonList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(
                  image: NetworkImage("${meal["strMealThumb"]}"),
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${meal["strMeal"]}",
                        style: GoogleFonts.notoSansHanunoo(
                          fontSize: 16,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "No 10 opp lekki phase 1 bridge in sangotedo estate",
                              style: GoogleFonts.notoSansHanunoo(
                                fontSize: 12,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            "${(int.parse(meal["idMeal"])/650).toInt()}\$ ",
                            style: GoogleFonts.notoSansHanunoo(
                                fontSize: 12,
                                fontWeight: FontWeight.bold
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),


                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ) :
      Center(
        child: CircularProgressIndicator(
          color: Color(0xff0B735F),
          backgroundColor: Colors.grey,
        ),
      )

    );
  }
}

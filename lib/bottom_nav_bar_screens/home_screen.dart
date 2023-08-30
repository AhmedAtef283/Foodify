import 'package:dio/dio.dart';
import 'package:e_comerce/app_starting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool isloading = true;
var jsonListCat;
var jsonListMeals;
int counter = 0 ;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getHttpCat();
    getHttpMeals();
  }

  Future<void> getHttpCat() async {
    final dio = Dio();
    var response =
        await dio.get('https://www.themealdb.com/api/json/v1/1/categories.php');
    if (response.statusCode == 200) {
      setState(() {
        isloading = false;
        jsonListCat = response.data["categories"] as List;
      });
    }
  }

  Future<void> getHttpMeals() async {
    final dio = Dio();
    var response = await dio
        .get('https://www.themealdb.com/api/json/v1/1/filter.php?c=Chicken');
    if (response.statusCode == 200) {
      setState(() {
        jsonListMeals = response.data["meals"] as List;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7FB),
      body: isloading
          ? Center(
              child: CircularProgressIndicator(
                color: Color(0xff0B735F),
                backgroundColor: Colors.grey,
              ),
            )
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Enjoy Delicious Food",
                    style: GoogleFonts.notoSansMultani(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  textAlign: TextAlign.start,
                  "Categories",
                  style: GoogleFonts.notoSansMultani(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal, // Set horizontal scroll
                    child: Row(
                      children: jsonListCat.map<Widget>((item) {
                        return InkWell(
                          onTap: () {
                            getHttpMeals();
                          },
                          child: Column(
                            children: [
                              Image(
                                image: NetworkImage(item["strCategoryThumb"]),
                                height: 100,
                                width: 100,
                              ),
                              Text(
                                item["strCategory"],
                                style: GoogleFonts.notoSansMultani(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Popular Meals",
                  style: GoogleFonts.notoSansMultani(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                    itemCount: jsonListMeals?.length ?? 0,
                    itemBuilder: (context, index) {
                      var meal = jsonListMeals[index];
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
                  ),
                ),
              ],
            ),
    );
  }
}

import 'package:dio/dio.dart';
import 'package:e_comerce/search_results.dart';
import 'package:flutter/material.dart';
String? categorie ;
String? api;
bool loaded = false;
 var jsonList;
class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  Future<void> getSearch(String? category) async {
    final dio = Dio();
    api = "https://www.themealdb.com/api/json/v1/1/filter.php?c=${category}";
    var response =
    await dio.get(api!);
    if (response.statusCode == 200) {
      print("Successful");
      setState(() {
        jsonList = response.data["meals"] as List;
        loaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage("assets/images/undraw_Searching_re_3ra9.png")),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  label: Text("Enter a Category"),
                  hintText: "Like Seafood, Chicken...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                onSubmitted: (value) async {
                        categorie = value;
                        getSearch(categorie);
                        print(jsonList);
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return SearchResults();
                          }
                          ),);

                        });
                },

              ),
            ),
          ),
        ],
      )
    );
  }
}

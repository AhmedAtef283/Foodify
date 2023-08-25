import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_comerce/app_starting.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


bool isloading = false;
var jsonList;


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  Future<void> getHttp() async {
    final dio = Dio();
    var response =
    await dio.get('https://www.themealdb.com/api/json/v1/1/categories.php');
    if(response.statusCode == 200){
      setState(() {
        print(response.data);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text("Enjoy Delicious food",
                style: GoogleFonts.notoSansMultani(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),

        ],
      ),
    );
  }
}

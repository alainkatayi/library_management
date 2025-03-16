import 'package:flutter/material.dart';
import 'package:library_app/pages/dashboard.dart';
import 'package:library_app/pages/homePage.dart';
import 'package:library_app/pages/loginPage.dart';
import 'package:library_app/pages/livrePage.dart';


void main(){
  runApp(Application());
}


class Application extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LivrePage(),
      routes: {
        "/login" : (context) => LoginPage(),
        "/dashboard" : (context) => Dashboard(),
      },
    );
  }

}
import 'package:flutter/material.dart';

import 'package:wonderful_nepal/MainPage.dart';
import 'package:wonderful_nepal/Profile.dart';
import 'package:wonderful_nepal/SearchPage.dart';
import 'package:wonderful_nepal/bottomNavBar.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'bottomNav',
        routes: {
          'bottomNav' : (context) => BottomNavBar(),
          'mainPage': (context) => mainPage(),
          'searchPage': (context) => searchPage(),
          'profile': (context) => profilePage(),
        }

    );
  }
}



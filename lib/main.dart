import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jobsque/screens/HomeScreen/SearchScreen.dart';
import 'package:jobsque/screens/onbording/SlidingPage.dart';
import 'package:jobsque/screens/onbording/SplashScreen.dart';
import 'package:jobsque/test.dart';

void main() {
  runApp(const MyApp());
  // Timer(const Duration(seconds: 3), () {
  //   Get.offAll(() => SlidingPage());
  // });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      // CreateAccount2(),
      // SplashScreen(),
        SearchScreen(),
      // HomeScreen() ,
    );
  }
}

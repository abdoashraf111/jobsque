import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsque/screens/onbording/SlidingPage.dart';
import 'package:jobsque/screens/onbording/SplashScreen.dart';
import 'package:jobsque/test.dart';

void main() {
  runApp(const MyApp());
  Timer(const Duration(seconds: 3), () {
    Get.to(() => SlidingPage());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      // CreateAccount2(),
      SplashScreen(),
    );
  }
}

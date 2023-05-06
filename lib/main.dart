import 'dart:async';
import 'dart:js';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jobsque/SplashScreen.dart';

import 'SlidingPage.dart';

void main() {
  runApp(const MyApp());
   Timer(Duration(seconds: 3), () {
    // MaterialPageRoute(
    //   builder: (context) => SlidingPage(),
    Get.to(()=>SlidingPage());

  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

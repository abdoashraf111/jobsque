import 'dart:async';

import 'package:flutter/material.dart';

import 'SlidingPage.dart';

void main() {
  runApp(const MyApp());
  Timer(Duration(seconds: 2), () {MaterialPageRoute(builder: (context) => SlidingPage(),);});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    ) ;
  }
}

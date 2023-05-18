import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:jobsque/screens/HomeScreen/HomeScreen.dart';
import 'package:jobsque/screens/HomeScreen/SearchScreen.dart';
import 'package:jobsque/screens/onbording/SlidingPage.dart';
import 'package:jobsque/screens/onbording/SplashScreen.dart';
import 'package:jobsque/test.dart';
import 'package:jobsque/test_cubit.dart';

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
    return  BlocProvider(
      create:(context) => TestCubit() ,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        // CreateAccount2(),
        // SplashScreen(),
        test(),
          // SearchScreen(),
        // HomeScreen() ,
      ),
    );
  }
}

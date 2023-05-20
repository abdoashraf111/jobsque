import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/screens/HomeScreen/HomeNavigationBar/Cubit/home_navigation_bar_cubit.dart';
import 'package:jobsque/screens/HomeScreen/Home_Page/Cubit/home_screen_cubit.dart';
import 'package:jobsque/screens/HomeScreen/SearchScreen.dart';
import 'package:jobsque/screens/JobDetails/job_details_cubit.dart';
import 'package:jobsque/screens/Signin/Cubit/sign_in_cubit.dart';
import 'package:jobsque/screens/forgotpassword/newpassword/new_pass_word_cubit.dart';
import 'package:jobsque/screens/onbording/Cubit/onbording_cubit.dart';
import 'package:jobsque/screens/onbording/SlidingPage.dart';
import 'package:jobsque/screens/onbording/SplashScreen.dart';
import 'package:jobsque/test.dart';

import 'CustomItems/Custom_Card/custom_card_cubit.dart';

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
    return  MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) =>SignInCubit() ,),
          BlocProvider(create: (context) =>OnbordingCubit() ,),
          BlocProvider(create: (context) => HomeScreenCubit(),),
          BlocProvider(create: (context) => HomeNavigationBarCubit(),),
          BlocProvider(create:(context) => NewPassWordCubit(),),
          BlocProvider(create: (context) => JobDetailsCubit(),),
          BlocProvider(create:(context) => CustomCardCubit(),)
        ],
        child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        SlidingPage(),
        // CreateAccount2(),
        // SplashScreen(),
        //   SearchScreen(),
        // HomeScreen() ,
      ),
    );
  }
}

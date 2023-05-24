
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/test.dart';
import 'package:jobsque/view/screens/HomeScreen/HomeNavigationBar/Cubit/home_navigation_bar_cubit.dart';
import 'package:jobsque/view/screens/HomeScreen/HomeNavigationBar/HomeNavigationBar.dart';
import 'package:jobsque/view/screens/HomeScreen/HomeScreen.dart';
import 'package:jobsque/view/screens/JobDetails/job_details_cubit.dart';
import 'package:jobsque/view/screens/Signin/Cubit/sign_in_cubit.dart';
import 'package:jobsque/view/screens/Signin/Signin.dart';
import 'package:jobsque/view/screens/forgotpassword/newpassword/new_pass_word_cubit.dart';
import 'package:jobsque/view/screens/onbording/Cubit/onbording_cubit.dart';
import 'package:jobsque/view/screens/onbording/SlidingPage.dart';

import 'CustomItems/Custom_Card/custom_card_cubit.dart';
import 'Services/sharedprefeances.dart';
import 'controller/data_cubit.dart';

void main() async{
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await MyCache.init();
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
          BlocProvider(create: (context) => HomeNavigationBarCubit(),),
          BlocProvider(create:(context) => NewPassWordCubit(),),
          BlocProvider(create: (context) => JobDetailsCubit(),),
          BlocProvider(create:(context) => CustomCardCubit(),),
          BlocProvider(create: (context) => DataCubit()..getJob(),)
        ],
        child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        // SlidingPage(),
            SignIn(),
        // CreateAccount2(),
        // SplashScreen(),
        //   SearchScreen(),
        // HomeNavigationBar() ,
      ),
    );
  }
}

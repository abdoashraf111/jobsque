import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/CustomItems/custom_icons.dart';


import '../AppliedScreen.dart';
import '../Home_Page/HomeScreen.dart';
import '../MassageScreen.dart';
import '../ProfileScreen.dart';
import '../SavedScreen.dart';
import 'Cubit/home_navigation_bar_cubit.dart';



class HomeNavigationBar extends StatelessWidget {
  List<Widget> pages = [
    HomeScreen(),
    MassageScreen(),
    AppliedScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeNavigationBarCubit,HomeNavigationBarState>(
      builder: (context, state) {
        int pageNumber = BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber;
        return Scaffold(
        body: pages[pageNumber],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            iconSize: 20,
            selectedFontSize: 10,
            showSelectedLabels: true,
            unselectedFontSize: 10,
            currentIndex: pageNumber,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber0();
                    },
                    icon: pageNumber == 0
                        ? Icon(
                            CustomIcons.home,
                          )
                        : Icon(CustomIcons.home)),
              ),
              BottomNavigationBarItem(
                label: "Massages",
                backgroundColor: Colors.white,
                icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber1();
                    },
                    icon: pageNumber == 1
                        ? Icon(CustomIcons.message)
                        : Icon(CustomIcons.message)),
              ),
              BottomNavigationBarItem(
                label: "Applied",
                backgroundColor: Colors.white,
                icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber2();
                    },
                    icon: pageNumber == 2
                        ? Icon(CustomIcons.briefcase)
                        : Icon(CustomIcons.briefcase)),
              ),
              BottomNavigationBarItem(
                label: "Saved",
                backgroundColor: Colors.white,
                icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber3();
                    },
                    icon: pageNumber == 3
                        ? Icon(CustomIcons.archive_minus_bold)
                        : Icon(CustomIcons.archive_minus)),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                backgroundColor: Colors.white,
                icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber4();
                    },
                    icon: pageNumber == 4
                        ? Icon(CustomIcons.profile)
                        : Icon(CustomIcons.profile)),
              ),
            ]),
      );}
    );
  }
}

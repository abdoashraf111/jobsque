import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/CustomItems/custom_icons.dart';


import '../../../../controller/data_cubit.dart';
import '../AppliedScreen.dart';
import '../HomeScreen.dart';
import '../MassageScreen.dart';
import '../ProfileScreen.dart';
import '../saveScreen/SavedScreen.dart';
import 'Cubit/home_navigation_bar_cubit.dart';



class HomeNavigationBar extends StatelessWidget {
  HomeNavigationBar({super.key});
  final List<Widget> pages = [
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
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber0();
                    },
                    icon: pageNumber == 0
                        ? const Icon(
                            CustomIcons.home,
                          )
                        : const Icon(CustomIcons.home)),
              ),
              BottomNavigationBarItem(
                label: "Massages",
                backgroundColor: Colors.white,
                icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber1();
                    },
                    icon: pageNumber == 1
                        ? const Icon(CustomIcons.message)
                        : const Icon(CustomIcons.message)),
              ),
              BottomNavigationBarItem(
                label: "Applied",
                backgroundColor: Colors.white,
                icon: IconButton(
                    onPressed: () {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber2();
                    },
                    icon: pageNumber == 2
                        ? const Icon(CustomIcons.briefcase)
                        : const Icon(CustomIcons.briefcase)),
              ),
              BottomNavigationBarItem(
                label: "Saved",
                backgroundColor: Colors.white,
                icon: IconButton(
                    onPressed: ()async {
                      BlocProvider.of<HomeNavigationBarCubit>(context).pageNumber3();
                      await BlocProvider.of<DataCubit>(context).showFavorites();

                    },
                    icon: pageNumber == 3
                        ? const Icon(CustomIcons.archive_minus_bold)
                        : const Icon(CustomIcons.archive_minus)),
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

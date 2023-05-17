import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/CustomItems/custom_icons.dart';
import 'package:jobsque/screens/HomeScreen/AppliedScreen.dart';
import 'package:jobsque/screens/HomeScreen/HomeScreen.dart';
import 'package:jobsque/screens/HomeScreen/MassageScreen.dart';
import 'package:jobsque/screens/HomeScreen/ProfileScreen.dart';
import 'package:jobsque/screens/HomeScreen/SavedScreen.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({Key? key}) : super(key: key);

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  List<Widget> pages = [
    HomeScreen(),
    MassageScreen(),
    AppliedScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];

  int PageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[PageNumber],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 20,
          selectedFontSize: 10,
          showSelectedLabels: true,
          unselectedFontSize: 10,
          currentIndex: PageNumber,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      PageNumber = 0;
                    });
                  },
                  icon: PageNumber == 0
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
                    setState(() {
                      PageNumber = 1;
                    });
                  },
                  icon: PageNumber == 1
                      ? Icon(CustomIcons.message)
                      : Icon(CustomIcons.message)),
            ),
            BottomNavigationBarItem(
              label: "Applied",
              backgroundColor: Colors.white,
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      PageNumber = 2;
                    });
                  },
                  icon: PageNumber == 2
                      ? Icon(CustomIcons.briefcase)
                      : Icon(CustomIcons.briefcase)),
            ),
            BottomNavigationBarItem(
              label: "Saved",
              backgroundColor: Colors.white,
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      PageNumber = 3;
                    });
                  },
                  icon: PageNumber == 3
                      ? Icon(CustomIcons.archive_minus_bold)
                      : Icon(CustomIcons.archive_minus)),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              backgroundColor: Colors.white,
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      PageNumber = 4;
                    });
                  },
                  icon: PageNumber == 4
                      ? Icon(CustomIcons.profile)
                      : Icon(CustomIcons.profile)),
            ),
          ]),
    );
  }
}

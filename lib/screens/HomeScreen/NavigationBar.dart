import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/CustomItems/custom_icons.dart';
import 'package:jobsque/screens/HomeScreen/AppliedScreen.dart';
import 'package:jobsque/screens/HomeScreen/HomeScreen.dart';
import 'package:jobsque/screens/HomeScreen/MassageScreen.dart';
import 'package:jobsque/screens/HomeScreen/ProfileScreen.dart';
import 'package:jobsque/screens/HomeScreen/SavedScreen.dart';

class NavigationBar extends StatefulWidget {
   NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
List<Widget>pages=[
  HomeScreen(),
  MassageScreen(),
  AppliedScreen(),
  SavedScreen(),
  ProfileScreen(),
];

   int PageNumber=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[PageNumber],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Column(
              children: [
                IconButton(onPressed: (){setState(() {
                  PageNumber=0;
                });}, icon:Icon( CustomIcons.home)),
                Text("Home")
              ],
            ), ),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){setState(() {
              PageNumber=1;
            });}, icon:Icon( CustomIcons.message)), ),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){setState(() {
              PageNumber=2;
            });}, icon:Icon( CustomIcons.briefcase)), ),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){setState(() {
              PageNumber=3;
            });}, icon:Icon( CustomIcons.home)), ),
            BottomNavigationBarItem(icon: IconButton(onPressed: (){setState(() {
              PageNumber=4;
            });}, icon:Icon( CustomIcons.home)), ),
          ]),
    );
  }
}

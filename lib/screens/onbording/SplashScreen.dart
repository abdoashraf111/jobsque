import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage("lib/images/Blur.png"),
              fit: BoxFit.cover),
        ),
          child: Center(child: Image.asset("lib/images/Logo.png"))),
    );
  }
}

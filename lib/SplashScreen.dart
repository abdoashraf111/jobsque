import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CircleAvatar(
            radius: 260,
            backgroundColor:  Color.fromRGBO(214, 228, 255, 0.14),
            child: CircleAvatar(
              radius: 150,
                backgroundColor: Color.fromRGBO(214, 228, 255, 0.14),
              child: CircleAvatar(
                  radius: 90,
                  backgroundColor: Color.fromRGBO(214, 228, 255, 0.3),
                  child: Image.asset("lib/images/Logo.png")),
            ),
          )),
    );
  }
}

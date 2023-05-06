import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Pageviews extends StatelessWidget {
  Pageviews({Key? key, required this.image}) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        RichText(
          maxLines:3,
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          text: const TextSpan(
              text: "Find a job,and ",style: TextStyle(
              color: Colors.blue,
              fontSize: 32,
              // fontFamily: "lib/fonts/SFPRODISPLAYBLACKITALIC.OTF"
          ),
              children: [
            TextSpan(
                text: "start building ",
                style: TextStyle(color: Colors.black),
                 ),
                  TextSpan(
                      text: "your career from now on ",
                      style: TextStyle(
                          color: Colors.blue
                      ))]
    ),
        )
      ],
    );
  }
}

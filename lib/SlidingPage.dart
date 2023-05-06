import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/pageview.dart';

import 'CustomItems/CustomButton.dart';

class SlidingPage extends StatelessWidget {
  const SlidingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Pageviews(image: "lib/images/Background.png"),
            ],
          ),
          Positioned(
            top: 61,
            child: Row(

              children: [

                Image.asset("lib/images/Logo1.png"),
                TextButton(
                  onPressed: () {},
                  child: Text("Skip"),
                ),

              ],
            ),
          ),
          Positioned(
              bottom: 56,

              child: CustomButton(text: "Next")),


        ],
      ),
    );
  }
}

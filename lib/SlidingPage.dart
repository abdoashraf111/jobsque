import 'package:flutter/material.dart';
import 'package:jobsque/pageview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'CustomItems/CustomButton.dart';
class SlidingPage extends StatelessWidget {
   SlidingPage({Key? key}) : super(key: key);
final _PageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24,right: 24),
        child: Stack(
          children: [
            PageView(
              controller: _PageController,
              children: [
                Pageviews(image: "lib/images/Background.png"),
                Pageviews(image: ""),
                Pageviews(image: "lib/images/Background.png"),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("lib/images/Logo1.png"),
                    // SizedBox(width:MediaQuery.of(context).size.width/2),
                    Spacer(flex: 1,),
                    TextButton(
                      onPressed: () {},
                      child: Text("Skip"),
                    ),
                  ],
                ),
                Spacer(flex: 1,),
                SmoothPageIndicator(
                    controller: _PageController, count: 3),
                SizedBox(height: 36,),
                CustomButton(text: "Next",fun: (){}),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

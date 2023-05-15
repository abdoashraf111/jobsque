import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque/screens/onbording/pageview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../CustomItems/CustomButton.dart';
import '../CreateAcount/CreateAccount.dart';
import '../Signin/Signin.dart';

class SlidingPage extends StatefulWidget {
  SlidingPage({Key? key}) : super(key: key);

  @override
  State<SlidingPage> createState() => _SlidingPageState();
}

class _SlidingPageState extends State<SlidingPage> {
  final _PageController = PageController();

  int NumPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _PageController,
              onPageChanged: (value) {
                setState(() {
                  NumPage = value;
                });
              },
              children: [
                Pageviews(
                    text1: "Find a job, and ",
                    text2: "start building ",
                    text3: "your career from now on",
                    smalltext:
                        "Explore over 25,924 available job roles and upgrade your operator now.",
                    image: "lib/images/Background.png"),
                Pageviews(
                    text1: "Hundreds of jobs are waiting for you to ",
                    text2: "join together",
                    text3: "",
                    smalltext:
                        "Immediately join us and start applying for the job you are interested in.",
                    image: "lib/images/Background 2.png"),
                Pageviews(
                    text1: "Get the best ",
                    text2: "choice for the job ",
                    text3: "you've always dreamed of",
                    smalltext:
                        "The better the skills you have, the greater the good job opportunities for you.",
                    image: "lib/images/Background 3.png"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset("lib/images/Logo1.png"),
                      // SizedBox(width:MediaQuery.of(context).size.width/2),
                      Spacer(
                        flex: 1,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAll(() => SignIn());
                        },
                        child: Text("Skip", style: TextStyle(fontSize: 16)),
                      ),
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  SmoothPageIndicator(
                      effect: CustomizableEffect(
                          dotDecoration: DotDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color(0xffADC8FF)),
                          activeDotDecoration: DotDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(8))),
                      controller: _PageController,
                      count: 3),
                  SizedBox(
                    height: 36,
                  ),
                  CustomButton(
                    text: NumPage == 2 ? "Get Start" : "Next",
                    fun: () {
                      if (NumPage == 2) {
                        Get.offAll(() => SignIn());
                      } else {
                        _PageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear);
                      }
                    },
                    buttoncolor: Color(0xff3366FF),
                    textcolor: Colors.white,
                  ),
                  SizedBox(
                    height: 56,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

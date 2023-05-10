import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/CustomItems/CustomButton.dart';

import '../../CustomItems/Custom_Card.dart';

class CreateAccount2 extends StatefulWidget {
   CreateAccount2({Key? key}) : super(key: key);

  @override
  State<CreateAccount2> createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
bool ontap=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text("What type of work are you interested in?",
                  style: TextStyle(
                    fontSize: 24,
                  )),
              const SizedBox(
                height: 12,
              ),
              const Text(
                  "Tell us what you’re interested in so we can customise the app for your needs.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff737379),
                  )),
              const SizedBox(
                height: 36,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 509,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: CustomCard(
                        image: 'lib/images/Vector.png',
                        text: "UI/UX Designer",
                        borderColor: Color(0xffD1D5DB),
                        backgroundColor: Color(0xffFAFAFA),
                          activeBorderColor:Color(0xff3366FF),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: CustomCard(
                        image: 'lib/images/Vector.png',
                        text: "UI/UX Designer",
                        borderColor: Color(0xffD1D5DB),
                        backgroundColor: Color(0xffFAFAFA),
                        activeBorderColor:Color(0xff3366FF),

                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 66,
              ),
              CustomButton(
                  text: "Next",
                  fun: (){},
                  buttoncolor: Color(0xff3366FF),
                  textcolor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

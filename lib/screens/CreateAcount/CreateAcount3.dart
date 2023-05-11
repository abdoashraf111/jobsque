import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/CustomItems/CustomButton.dart';

import '../../CustomItems/Custom_Card.dart';

class CreateAccount3 extends StatefulWidget {
  CreateAccount3({Key? key}) : super(key: key);

  @override
  State<CreateAccount3> createState() => _CreateAccount3State();
}

class _CreateAccount3State extends State<CreateAccount3> {
  bool ontap = false;
  int groupValue = 0;

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
              const Text("Where are you prefefred Location?",
                  style: TextStyle(
                    fontSize: 24,
                  )),
              const SizedBox(
                height: 12,
              ),
              const Text(
                  "Let us know, where is the work location you want at this time, so we can adjust it.",
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
                child: Column(
                  children: [
                    CupertinoSlidingSegmentedControl(
                        backgroundColor: const Color(0xffF4F4F5),
                        thumbColor: const Color(0xff091A7A),
                        padding: const EdgeInsets.all(4),
                        groupValue: groupValue,
                        children: {
                          0: SizedBox(
                            width: 200,
                            height: 50,
                            child: Center(
                                child: Text(
                              "Work From Office",
                              style: TextStyle(
                                  color: groupValue == 1
                                      ? Colors.black
                                      : Colors.white),
                            )),
                          ),
                          1: SizedBox(
                            width: 200,
                            height: 50,
                            child: Center(
                                child: Text(
                              "Remote Work",
                              style: TextStyle(
                                  color: groupValue == 0
                                      ? Colors.black
                                      : Colors.white),
                            )),
                          ),
                        },
                        onValueChanged: (value) {
                          setState(() {
                            groupValue = value!;
                          });
                        }),
                    SizedBox(height: 20,),
                    Text("Select the country you want for your job",style: TextStyle(color: Colors.grey,fontSize: 16)),
                    const SizedBox(
                      height: 36,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 509,
                      child:
                      GridView.count(
                        crossAxisCount: 2,
                        children: [
                          CustomCity(
                            image: "lib/images/cities/united states.png",
                            backgroundColor:const Color(0xffFAFAFA) ,
                            borderColor: Color(0xffE5E7EB),
                            text: "United States",
                            activeBackcolor: Color(0xffD6E4FF),
                            activeBorderColor: Color(0xff3366FF),
                          ),
                          CustomCity(
                            image: "lib/images/cities/united states.png",
                            backgroundColor:const Color(0xffFAFAFA) ,
                            borderColor: Color(0xffE5E7EB),
                            text: "Malaysia",
                            activeBackcolor: Color(0xffD6E4FF),
                            activeBorderColor: Color(0xff3366FF),
                          ),








                        ],
                      ),

                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 66,
              ),
              CustomButton(
                  text: "Next",
                  fun: () {},
                  buttoncolor: Color(0xff3366FF),
                  textcolor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}

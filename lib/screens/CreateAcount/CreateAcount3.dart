import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque/CustomItems/CustomButton.dart';

import '../../CustomItems/Custom_Card.dart';
import 'CreateAcount4.dart';

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
                width: double.infinity,
                height: 490,
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Select the country you want for your job",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    const SizedBox(
                      height: 36,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            CustomCity(index: 0),
                            CustomCity(index: 1),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCity(index: 2),
                            CustomCity(index: 3),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCity(index: 4),
                            CustomCity(index: 5),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCity(index: 6),
                            CustomCity(index: 7),
                            CustomCity(index: 8),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCity(index: 9),
                            CustomCity(index: 10),
                          ],
                        ),
                        Row(
                          children: [
                            CustomCity(index: 11),
                            CustomCity(index: 12),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             Spacer(flex: 1,),
              CustomButton(
                  text: "Next",
                  fun: () {
                    Get.to(()=>CreateAcount4());
                  },
                  buttoncolor: Color(0xff3366FF),
                  textcolor: Colors.white),
              const SizedBox(height: 40,)
            ],
          ),
        ),
      ),
    );
  }
}

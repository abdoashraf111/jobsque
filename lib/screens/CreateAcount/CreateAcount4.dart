import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque/CustomItems/CustomButton.dart';
import 'package:jobsque/screens/CreateAcount/CreateAcount3.dart';

class CreateAcount4 extends StatelessWidget {
  const CreateAcount4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right:24 ,left: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black, onPressed: () {
                    Get.to(()=>CreateAccount3());
                  },),
                ],
              ),
              Spacer(flex: 1,),
              Image.asset("lib/images/Success Account Ilustration.png"),
              SizedBox(height: 24,),
              const Text("Your account has been set up!",style: TextStyle(fontSize: 24)),
              SizedBox(height: 8,),
              const Text("We have customized feeds according to your preferences",style: TextStyle(
                fontSize: 14
              )),
              Spacer(flex: 1,),
              CustomButton(
                  text: "Get Started",
                  fun: (){

                  },
                  buttoncolor: Colors.blue,
                  textcolor: Colors.white),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    ) ;
  }
}

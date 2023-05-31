import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/view/screens/profile%20and%20setting/TwoStepVerification.dart';
import 'package:jobsque/view/screens/profile%20and%20setting/changePassword.dart';
import 'package:jobsque/view/screens/profile%20and%20setting/emailAddress.dart';
import 'package:jobsque/view/screens/profile%20and%20setting/faceID.dart';
import 'package:jobsque/view/screens/profile%20and%20setting/phoneNumber.dart';

class LoginAndSecurity extends StatelessWidget {
   LoginAndSecurity({Key? key}) : super(key: key);

  List<String> name=[
    "Email address",
    "Phone number",
    "Change password",
    "Two-step verification",
    "Face ID",
  ];
  List<String> secName=[
    "rafifdian12@gmail.com",
    "",
    "",
    "Non active",
    "",
  ];
  List screens=[
     emailAddress(),
     phoneNumber(),
     changePassword(),
     TwoStepVerification(),
     faceID(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(
                    height: 24,
      ),
                   Padding(
        padding: const EdgeInsets.only(right: 24, left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_outlined, size: 24),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
                 const Spacer(
              flex: 3,
            ),
            const Text("Login and security"),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
                   const SizedBox(
        height: 44,
      ),
                   Container(
        width: MediaQuery.of(context).size.width,
        height: 36,
        color: Color(0xffE5E7EB),
        child: const Padding(
          padding: EdgeInsets.only(
            right: 24,
            left: 24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Accont access"),
            ],
          ),
        ),
      ),
                   const SizedBox(
        height: 20,
      ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24, left: 24),
                    child: SizedBox(
                      height: 62 * 6,
                      child: ListView.separated(
                          itemBuilder: (context, index) => Row(
                            children: [
                              Text(name[index]),
                              Spacer(),
                              Text(secName[index]),
                              Spacer(),
                              IconButton(onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        screens[index]));
                              }, icon: Icon(Icons.arrow_forward))

                            ],
                          ),
                          separatorBuilder: (context, index) => const Column(
                            children: [
                              Divider(
                                height: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 10,
                              )
                            ],
                          ),
                          itemCount: name.length),
                    ),
                  ),
                 ]
                )
        )
    );
  }
}

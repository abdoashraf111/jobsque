import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../CustomItems/CustomButton.dart';
import '../../CustomItems/Custom_textform.dart';
import '../onbording/SlidingPage.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);
  bool _sufvar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(() => SlidingPage());
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.black)),
                    Spacer(
                      flex: 1,
                    ),
                    Image.asset(
                      "lib/images/Logo1.png",
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text("Cereate Account",
                    style: TextStyle(fontSize: 28, color: Colors.black)),
                SizedBox(
                  height: 8,
                ),
                Text("Please create an account to find your dream job",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
                SizedBox(
                  height: 44,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                SizedBox(
                  height: 24,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            _sufvar = !_sufvar;
                            print(_sufvar);
                          },
                          child: Icon(_sufvar == false
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Password must be at least 8 characters",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
                SizedBox(
                  height: 105,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: TextStyle(color: Colors.grey, fontSize: 14)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: CustomButton(
                    text: "Create account",
                    fun: () {

                    },
                    buttoncolor: Color.fromRGBO(209, 213, 219, 1),
                    textcolor: Color.fromRGBO(107, 114, 128, 1)
                  ,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 10,
                        color: Colors.grey,
                        endIndent:20,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "Or Sign up With Account",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Expanded(
                      child: Divider(
                        height: 10,
                        color: Colors.grey,
                        indent:20,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                          width: 154,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color.fromRGBO(209, 213, 219, 1))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("lib/images/google.png"),
                            Text("Google",style: TextStyle(
                              fontSize: 14,
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 19,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 154,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color.fromRGBO(209, 213, 219, 1))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("lib/images/Facebook.png"),
                            Text("Facebook",style: TextStyle(
                              fontSize: 14,
                            ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

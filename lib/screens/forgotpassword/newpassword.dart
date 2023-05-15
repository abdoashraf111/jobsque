import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:jobsque/screens/forgotpassword/passChangeDone.dart';

import '../../CustomItems/CustomButton.dart';
import '../Signin/Signin.dart';
import 'Checkemail.dart';

class NewPass extends StatefulWidget {
  NewPass({Key? key}) : super(key: key);

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  var passwordcontroller1 = TextEditingController();
  var passwordcontroller2 = TextEditingController();
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();
  bool _sufvar1=false;
  bool _sufvar2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Form(
            key: FormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(() => CheckEmail());
                        },
                        icon: const Icon(Icons.arrow_back)),
                    const Spacer(
                      flex: 1,
                    ),
                    Image.asset("lib/images/Logo1.png"),
                  ],
                ),
                const SizedBox(
                  height: 44,
                ),
                const Text("Create new password", style: TextStyle(fontSize: 28)),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                    "Set your new password so you can login and acces Jobsque",
                    style: TextStyle(color: Color(0xff6B7280), fontSize: 16)),
                const SizedBox(
                  height: 40,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.length < 5) {
                      return "Password must be at least 8 characters";
                    } else {
                      return null;
                    }
                  },
                  controller: passwordcontroller1,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_sufvar1,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _sufvar1 = !_sufvar1;
                            });
                          },
                          child: Icon(_sufvar1 == false
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.length < 5) {
                      return "Both password must match";
                    } else {
                      return null;
                    }
                  },
                  controller: passwordcontroller2,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_sufvar2,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _sufvar2 = !_sufvar2;
                            });
                          },
                          child: Icon(_sufvar2 == false
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("You remember your password",
                        style: TextStyle(color: Color(0xff9CA3AF))),
                    TextButton(
                      child: const Text("Login"),
                      onPressed: () {
                        Get.to(() => PassDone());
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    text: "Reset password",
                    fun: () {
                      if(FormKey.currentState!.validate()){
                        Get.to(()=>PassDone());
                      }
                    },
                    buttoncolor: const Color(0xff3366FF),
                    textcolor: Colors.white),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

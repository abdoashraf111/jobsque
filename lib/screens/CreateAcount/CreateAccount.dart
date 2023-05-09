import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../CustomItems/CustomButton.dart';
import '../Signup/Signup.dart';
import '../onbording/SlidingPage.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({Key? key}) : super(key: key);
  bool _sufvar = false;
  TextEditingController namecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

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
                const SizedBox(
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
                const SizedBox(
                  height: 40,
                ),
                const Text("Cereate Account",
                    style: TextStyle(fontSize: 28, color: Colors.black)),
                const SizedBox(
                  height: 8,
                ),
                const Text("Please create an account to find your dream job",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
                const SizedBox(
                  height: 44,
                ),
                TextFormField(
                  controller: namecontroller,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      hintText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            _sufvar = !_sufvar;
                          },
                          child: Icon(_sufvar == false
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text("Password must be at least 8 characters",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    )),
                const SizedBox(
                  height: 105,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                        style: TextStyle(color: Colors.grey, fontSize: 14)),
                    TextButton(
                        onPressed: () {
                          Get.to(()=>SignUp());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: CustomButton(
                    text: "Create account",
                    fun: () async{
                      // await Signup();
                    },
                    buttoncolor: const Color.fromRGBO(209, 213, 219, 1),
                    textcolor: const Color.fromRGBO(107, 114, 128, 1)
                  ,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
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
                const SizedBox(
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
// Signup(){
//   Api().post(url: url, body: body, token: token)
// }

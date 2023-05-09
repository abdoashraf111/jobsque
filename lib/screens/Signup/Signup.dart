import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsque/helper/sharedprefeances.dart';
import '../../CustomItems/CustomButton.dart';
import '../../helper/api.dart';
import '../CreateAcount/CreateAccount.dart';
import '../onbording/SlidingPage.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _sufvar = false;
  TextEditingController namecontroller =
      TextEditingController(text: MyCache.GetString(key: MyChachKey.name));
  TextEditingController emailcontroller =
      TextEditingController(text: MyCache.GetString(key: MyChachKey.email));
  TextEditingController passwordcontroller =
      TextEditingController(text: MyCache.GetString(key: MyChachKey.password));
  bool clickEnable = false;
  bool check = false;
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();
  Api api = Api();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Form(
              key: FormKey,
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
                          icon: const Icon(Icons.arrow_back,
                              color: Colors.black)),
                      const Spacer(
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
                  const Text("Login",
                      style: TextStyle(fontSize: 28, color: Colors.black)),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("Please login to find your dream job",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      )),
                  const SizedBox(
                    height: 44,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == "") {
                        return "you should fill this ";
                      } else {
                        return null;
                      }
                    },
                    controller: namecontroller,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_outline),
                        hintText: "Username",
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
                        return "it should more than 5 letters or numbers ";
                      } else {
                        return null;
                      }
                    },
                    controller: passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !_sufvar,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _sufvar = !_sufvar;
                              });
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
                  Row(
                    children: [
                      Checkbox(
                        shape: const ContinuousRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        value: check,
                        onChanged: (value) {
                          setState(() {
                            check = value!;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                      const Text("Remember me"),
                      const Spacer(
                        flex: 1,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password?"))
                    ],
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont’t have an account?",
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                      TextButton(
                          onPressed: () {
                            Get.to(() => CreateAccount());
                          },
                          child: const Text(
                            "Register",
                            style: TextStyle(color: Colors.blue, fontSize: 14),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: CustomButton(
                      text: "Login",
                      fun: () {
                        if (FormKey.currentState!.validate()) {
                          if (check == true) {
                            MyCache.SetString(
                                key: MyChachKey.password,
                                value: passwordcontroller.text);
                            MyCache.SetString(
                                key: MyChachKey.name,
                                value: namecontroller.text);
                            MyCache.SetString(
                                key: MyChachKey.email,
                                value: emailcontroller.text);
                          }
                          setState(() {
                            clickEnable=true;
                          });
                        }
                        // api.post(url: url, body: body, token: token);
                        // await Signup();
                      },
                      buttoncolor: clickEnable == true
                          ? Colors.blue
                          : Color.fromRGBO(209, 213, 219, 1),
                      textcolor: const Color.fromRGBO(107, 114, 128, 1),
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
                          endIndent: 20,
                          thickness: 1,
                        ),
                      ),
                      Text(
                        "Or Login With Account",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      Expanded(
                        child: Divider(
                          height: 10,
                          color: Colors.grey,
                          indent: 20,
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
                        onTap: () {},
                        child: Container(
                          width: 154,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(209, 213, 219, 1))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("lib/images/google.png"),
                              const Text(
                                "Google",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 19,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 154,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(209, 213, 219, 1))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("lib/images/Facebook.png"),
                              const Text(
                                "Facebook",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )
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
      ),
    );
  }
}

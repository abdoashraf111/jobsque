import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/CustomItems/Custom_Card.dart';
import 'package:jobsque/screens/CreateAcount/CreateAccount.dart';

class test extends StatelessWidget {
   test({Key? key}) : super(key: key);
  List city=["us","malisia","egypt"];
   List flag=["lib/images/cities/united states.png",
     "lib/images/cities/china.png",
     "lib/images/cities/india.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: TextButton(onPressed: (){
           Navigator.of(context).push(
             MaterialPageRoute(builder: (context) =>CreateAccount() ,));}, child: Text("sadasdasdasdasd")),
      ),
    );
  }
}

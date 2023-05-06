import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,required this.text}) : super(key: key);
String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height:48 ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(1000)),
        color:const Color(0xff3366FF) ,
      ),
      child: Center(child: Text("Next",style: TextStyle(
        color: Colors.white,
        fontSize: 16
      ),)),
    );
  }
}

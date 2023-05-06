import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key,required this.text,required this.fun}) : super(key: key);
String text;
final fun;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Container(
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
      ),
    );
  }
}

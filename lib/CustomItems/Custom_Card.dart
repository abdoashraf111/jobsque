import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  CustomCard(
      {Key? key,
      required this.image,
      required this.text,
      required this.borderColor,
      required this.backgroundColor,
        required this.activeBorderColor
      })
      : super(key: key);
  String image;
  String text;
  Color borderColor;
  Color backgroundColor;
  Color activeBorderColor;


  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool ontap=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 156,
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: ontap==true?widget.activeBorderColor:widget.borderColor)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: InkWell(
          onTap: (){
            setState(() {
              ontap=!ontap;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(
                flex: 1,
              ),
              CircleAvatar(
                backgroundColor: ontap==true?widget.activeBorderColor:widget.borderColor,
                radius: 25,
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 24,
                    child: Image.asset(widget.image)),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(widget.text, style: const TextStyle(fontSize: 16)),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

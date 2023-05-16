import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/CustomItems/custom_icons.dart';

class CustomJob extends StatefulWidget {
   CustomJob({Key? key,
     required this.name,
     required this.image,
     required this.jobLevel,
     required this.jobTime,
     required this.salary,
     required this.companyName
   }) : super(key: key);
String name ;
String image;
String jobTime;
String jobLevel;
String salary;
String companyName;
  @override
  State<CustomJob> createState() => _CustomJobState();
}

class _CustomJobState extends State<CustomJob> {
  bool click=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 103,
          child: Column(
            children: [
              Spacer(flex: 1,
              ),
              Row(
                children: [
                  Image.asset("lib/images/Zoom Logo.png"),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(widget.name,
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      SizedBox(
                        height: 4,
                      ),
                      Text("${widget.companyName} • United States",
                          style: TextStyle(color: Colors.black, fontSize: 12)),
                    ],
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  IconButton(onPressed: (){
                    setState(() {
                      click=!click;
                    });
                  },
                    icon:click==true?
                    Icon(CustomIcons.archive_minus,
                    color: Colors.black,size: 24,
                  ): Icon(CustomIcons.archive_minus_bold,
                      color: Colors.blue,size: 24,
                    )),
                ],
              ),
             Spacer(flex: 1,
              ),
              Row(
                children: [
                  Container(
                    height: 26,
                    width: 73,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromRGBO(255, 255, 255, 0.14),
                    ),
                    child: Center(
                        child:
                            Text(widget.jobTime, style: TextStyle(color: Colors.blue))),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    height: 26,
                    width: 73,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromRGBO(255, 255, 255, 0.14),
                    ),
                    child: Center(
                        child:
                            Text("Remote", style: TextStyle(color: Colors.blue))),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    height: 26,
                    width: 73,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromRGBO(255, 255, 255, 0.14),
                    ),
                    child: Center(
                        child:
                            Text(widget.jobLevel, style: TextStyle(color: Colors.blue))),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                   Text("\$ ${widget.salary}",
                      style: TextStyle(color: Colors.green, fontSize: 16)),
                  const Text("/Month",
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                ],
              ),
              Spacer(flex: 1,
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomJob extends StatelessWidget {
   CustomJob({Key? key,required this.name}) : super(key: key);
String name ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("lib/images/Zoom Logo.png"),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(name,
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  SizedBox(
                    height: 4,
                  ),
                  Text("Zoom • United States",
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Icon(
                Icons.add_box_rounded,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
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
                        Text("Fulltime", style: TextStyle(color: Colors.blue))),
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
                        Text("Design", style: TextStyle(color: Colors.blue))),
              ),
              const Spacer(
                flex: 1,
              ),
              const Text("\$12K-15K",
                  style: TextStyle(color: Colors.green, fontSize: 16)),
              const Text("/Month",
                  style: TextStyle(color: Colors.black, fontSize: 12)),
            ],
          ),
        ],
      ),
    );
  }
}

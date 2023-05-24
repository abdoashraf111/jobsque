import 'package:flutter/material.dart';

import '../../../CustomItems/custom_icons.dart';
import '../../../Services/api_showjobs.dart';
import 'HomeNavigationBar/HomeNavigationBar.dart';


class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);
  final TextEditingController _controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:24 ,right: 24,top: 40),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>HomeNavigationBar() ,));
                    },
                        icon: const Icon(Icons.arrow_back,color: Colors.black,)),
                    const Spacer(flex: 1,),
                    SizedBox(width: 290,
                      child: TextFormField(
                        controller:_controller ,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(CustomIcons.search_normal),
                          hintText: "Search....",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 36,
                color: Color(0xffE5E7EB),
                child:Padding(
                  padding: const EdgeInsets.only(right:24 ,left: 24,),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Recent searches"),
                    ],
                  ),
                ) ,
                ),
              // FutureBuilder(
              //   future: serv.get(),
              //     builder:(context, snapshot) {
              //     If(snapshot.hasData){}
              //       return ListView.builder(
              //         itemCount: ,
              //
              //           itemBuilder: (context, index) {
              //
              //           },);
              //     }, ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 36,
                color: Color(0xffE5E7EB),
                child:Padding(
                  padding: const EdgeInsets.only(right:24 ,left: 24,),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Recent searches"),
                    ],
                  ),
                ) ,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

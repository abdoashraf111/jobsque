import 'package:flutter/material.dart';
import 'package:jobsque/CustomItems/Custom_Credit.dart';

import '../../CustomItems/Custom_job.dart';
import '../../helper/api_showjobs.dart';
import '../../models/showjobs.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
  ApiShowJobs serv= ApiShowJobs();
  @override
  Widget build(BuildContext context) {
    return
       SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24,left: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 40,),
                    Row(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Hi, Rafif Dian👋",style: TextStyle(
                              fontSize:24,fontWeight: FontWeight.bold
                          )),
                          SizedBox(height: 8,),
                          Text("Create a better future for yourself here",style: TextStyle(
                              fontSize: 14,color: Colors.grey
                          )),

                        ],),
                      const Spacer(flex: 1,),
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xffD1D5DB),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,

                          radius: 24,
                          child: Icon(Icons.recycling_outlined),
                        ),
                      )
                    ],),
                    const SizedBox(height: 28,),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          label: Text("Search...."),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          )
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const Text("Suggested Job",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        )),
                        const Spacer(flex: 1,),
                        TextButton(onPressed: (){}, child: const Text("View all")),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 24,),
                      CustomCredit(
                          colorBack: Color(0xff091A7A),
                        colorText: Colors.white,),
                      const SizedBox(width: 16,),
                      CustomCredit(colorBack: Color(0XFFF4F4F5),
                        colorText: Colors.black,),
                      const SizedBox(width: 24,),
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24,left: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 24,),
                    Row(
                      children: [
                        const Text("Recent Job",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )),
                        const Spacer(flex: 1,),
                        TextButton(onPressed: (){},
                            child: const Text("View all")),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 226,
                      child: FutureBuilder(
                        future: serv.get(),
                        builder: (context, snapshot) {

                          if(snapshot.hasData){
                            Showjobs date=snapshot.data;
                            return ListView.builder(
                              itemCount:2,
                              itemBuilder: (context, index) =>
                                  CustomJob(
                                    name:date.data![index].name.toString(),
                                    image: date.data![index].image.toString(),
                                    jobLevel: date.data![index].jobLevel.toString(),
                                    jobTime: date.data![index].jobTimeType.toString(),
                                    salary: date.data![index].salary.toString(),
                                    companyName: date.data![index].compName.toString(), ),
                            );
                          }
                          else{
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                        }
                        ,
                      ),
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),
      );
  }
}

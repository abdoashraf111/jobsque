import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/CustomItems/CustomButton.dart';
import 'package:jobsque/CustomItems/custom_icons.dart';
import 'package:jobsque/controller/data_cubit.dart';
import 'package:jobsque/view/ApplyJob.dart';


import '../../../CustomItems/CustomWorker.dart';
import '../HomeScreen/HomeScreen.dart';
import 'job_details_cubit.dart';

class JobDetails extends StatelessWidget {
  JobDetails({Key? key,required this.index}) : super(key: key);
int index;

  final _controller=PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobDetailsCubit, JobDetailsState>(
      builder: (context, state) {
        int groupValue = BlocProvider.of<JobDetailsCubit>(context).groupValue;
        var job=BlocProvider.of<DataCubit>(context).modelJob.data![index];
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
              child: Stack(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.of(context).pop(MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                              },
                            ),
                            const Spacer(),
                            const Text("Job Details"),
                            const Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(CustomIcons.archive_minus))
                          ],
                        ),
                        Center(
                          child: SizedBox(
                            height: 150,
                            width: 220,
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset("lib/images/Zoom Logo.png"),
                                 Text(job.name.toString()),
                                TextButton(
                                    onPressed: () async {

                                    },
                                    child: const Text("Twitter • Jakarta, Indonesia ")),
                                Row(
                                  children: [
                                    Container(
                                      height: 26,
                                      width: 65,
                                      decoration: const BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(100)),
                                        color: Color.fromRGBO(214, 228, 255, 1),
                                      ),
                                      child: const Center(
                                          child: Text("sdascasc",
                                              style: TextStyle(
                                                  color: Colors.blue, fontSize: 12))),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Container(
                                      height: 26,
                                      width: 65,
                                      decoration: const BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(100)),
                                        color: Color.fromRGBO(214, 228, 255, 1),
                                      ),
                                      child: const Center(
                                          child: Text("Remote",
                                              style: TextStyle(
                                                  color: Colors.blue, fontSize: 12))),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                    Container(
                                      height: 26,
                                      width: 65,
                                      decoration: const BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(100)),
                                        color: Color.fromRGBO(214, 228, 255, 1),
                                      ),
                                      child: const Center(
                                          child: Text("adass",
                                              style: TextStyle(
                                                  color: Colors.blue, fontSize: 12))),
                                    ),
                                    const Spacer(
                                      flex: 1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CupertinoSlidingSegmentedControl(
                            backgroundColor: const Color(0xffF4F4F5),
                            thumbColor: const Color(0xff091A7A),
                            padding: const EdgeInsets.all(4),
                            groupValue: groupValue,
                            children: {
                              0: SizedBox(
                                width: 200,
                                height: 50,
                                child: Center(
                                    child: Text(
                                  "Work From Office",
                                  style: TextStyle(
                                      color: groupValue == 0
                                          ? Colors.white
                                          : Colors.black),
                                )),
                              ),
                              1: SizedBox(
                                width: 200,
                                height: 50,
                                child: Center(
                                    child: Text(
                                  "Remote Work",
                                  style: TextStyle(
                                      color: groupValue == 1
                                          ? Colors.white
                                          : Colors.black),
                                )),
                              ),
                              2: SizedBox(
                                width: 200,
                                height: 50,
                                child: Center(
                                    child: Text(
                                  "Remote Work",
                                  style: TextStyle(
                                      color: groupValue == 2
                                          ? Colors.white
                                          : Colors.black),
                                )),
                              ),
                            },
                            onValueChanged: (value) {
                              BlocProvider.of<JobDetailsCubit>(context)
                                  .groupchange(value!);
                              if(value==0){
                              _controller.jumpToPage(0);}
                              if(value==1){
                                _controller.jumpToPage(1);}
                              if(value==2){
                                _controller.jumpToPage(2);}
                            }),
                        const SizedBox(
                          height: 27,
                        ),
                        Expanded(
                          child: PageView(
                             physics: const NeverScrollableScrollPhysics(),
                            controller: _controller,
                            children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("sdsfsdf"),
                                SizedBox(height: 8,),
                                Text(
                                    "dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("dfsdfsd"),
                                SizedBox(height: 8,),
                                Text("dsssssssssssssssssssssssssssssssssssss"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Contact Us"),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Container(
                                      height:56 ,
                                      width: 157,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Email"),
                                            Text("twitter@mail.com"),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height:56 ,
                                      width: 157,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: const Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Email"),
                                            Text("twitter@mail.com"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 24,),
                                const Text("About Company"),
                                SizedBox(height: 16,),
                                const Text("sdsfsdfddddddddddddddddddddddddddddddddddd"),
                              ],
                            ),
                            Column(
                              children: [
                                Row(children: [
                                  const Column(
                                    children: [
                                      Text("6 Employees For"),
                                      Text("UI/UX Design"),
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 150,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: Row(
                                      children: [
                                        const Text("      UI/UX Designer",style: TextStyle(fontSize: 12)),
                                        IconButton(onPressed: (){},
                                            icon: const Icon(Icons.arrow_downward,size: 12,))
                                      ],
                                    ),
                                  )
                                ],),
                                const SizedBox(height: 28,),
                                Expanded(
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) => const Column(
                                      children: [
                                        SizedBox(height: 10,),
                                        Divider(height: 20,color: Colors.grey,),
                                      ],
                                    ),
                                    itemCount:10 ,
                                    itemBuilder:(context, index) => const CustomWorkers(), ),
                                )
                              ],
                            ),
                          ],),
                        ),




                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 0,
                    right: 0,
                    child: CustomButton(
                        text: "Apply now",
                        fun: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ApplyJob(),));
                        },
                        buttoncolor: Colors.blue,
                        textcolor: Colors.white),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

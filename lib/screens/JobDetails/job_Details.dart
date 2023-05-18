import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/CustomItems/custom_icons.dart';

import '../../helper/api_showjobs.dart';
import '../HomeScreen/Home_Page/HomeScreen.dart';
import 'job_details_cubit.dart';

class JobDetails extends StatelessWidget {
  JobDetails({
    Key? key,
  }) : super(key: key);

  ApiShowJobs serv = ApiShowJobs();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobDetailsCubit,JobDetailsState>(
      builder: (context, state) {
        int groupValue=BlocProvider.of<JobDetailsCubit>(context).groupValue;
        return Scaffold(
          body: SafeArea(
            child: Column(
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
                    const Text("Job Details"),
                    IconButton(
                        onPressed: () {}, icon: Icon(CustomIcons.archive_minus))
                  ],
                ),
                Container(
                  height: 150,
                  width: 220,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(""),
                      Text("Senior UI Designer"),
                      TextButton(
                          onPressed: () async {
                            Map<String, dynamic> data = await serv.get();
                          },
                          child: Text("Twitter • Jakarta, Indonesia ")),
                      Row(
                        children: [
                          Container(
                            height: 26,
                            width: 65,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Color.fromRGBO(214, 228, 255, 1),
                            ),
                            child: Center(
                                child:
                                Text("sdascasc", style: TextStyle(color: Colors.blue,fontSize: 12))),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Container(
                            height: 26,
                            width: 65,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Color.fromRGBO(214, 228, 255, 1),
                            ),
                            child: Center(
                                child:
                                Text("Remote", style: TextStyle(color: Colors.blue,fontSize: 12))),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Container(
                            height: 26,
                            width: 65,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              color: Color.fromRGBO(214, 228, 255, 1),
                            ),
                            child: Center(
                                child:
                                Text("adass", style: TextStyle(color: Colors.blue,fontSize: 12))),
                          ),
                          const Spacer(
                            flex: 1,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
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
                      2:SizedBox(
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
                      BlocProvider.of<JobDetailsCubit>(context).groupchange(value!);
                    }),
                SizedBox(height: 20,),



              ],
            ),
          ),
        );
      },

    );
  }
}

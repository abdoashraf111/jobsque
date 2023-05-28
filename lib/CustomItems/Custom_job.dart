import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/CustomItems/custom_icons.dart';

import '../controller/data_cubit.dart';
import 'custom job/custom_job_cubit.dart';


class CustomJob extends StatelessWidget {
  CustomJob({Key? key, required this.index}) : super(key: key);
  bool click = false;
  int index;

  @override
  Widget build(BuildContext context) {


    return BlocBuilder<CustomJobCubit,CustomJobState>(builder: (context, state) {
      var dataModel =
      BlocProvider.of<DataCubit>(context).modelJob.data![index];
      var jobId=BlocProvider.of<DataCubit>(context).modelJob.data![index].id;
      return Column(
        children: [
          SizedBox(
            height: 103,
            child: Column(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Image.asset("lib/images/Zoom Logo.png"),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${dataModel.name}",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18)),
                        const SizedBox(
                          height: 4,
                        ),
                        Text("${dataModel.compName} • United States",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 12)),
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    IconButton(
                        onPressed: ()async {

                          click = !click;
                          BlocProvider.of<DataCubit>(context).addFavorites(jobId: jobId!.toInt());
                          if(click==true){

                            await BlocProvider.of<DataCubit>(context).addFavorites(jobId: jobId.toInt());

                          }
                        },
                        icon: click == true
                            ? const Icon(
                          CustomIcons.archive_minus_bold,
                          color: Colors.blue,
                          size: 24,
                        )
                            : const Icon(
                          CustomIcons.archive_minus,
                          color: Colors.black,
                          size: 24,
                        )),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
                Row(
                  children: [
                    Container(
                      height: 26,
                      width: 73,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color.fromRGBO(214, 228, 255, 1),
                      ),
                      child: Center(
                          child: Text("${dataModel.jobTimeType}",
                              style: const TextStyle(
                                  color: Colors.blue, fontSize: 12))),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 26,
                      width: 73,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color.fromRGBO(214, 228, 255, 1),
                      ),
                      child: const Center(
                          child: Text("Remote",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 12))),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 26,
                      width: 73,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        color: Color.fromRGBO(214, 228, 255, 1),
                      ),
                      child: Center(
                          child: Text("${dataModel.jobLevel}",
                              style: const TextStyle(
                                  color: Colors.blue, fontSize: 12))),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text("\$ ${dataModel.salary}",
                        style:
                        const TextStyle(color: Colors.green, fontSize: 16)),
                    const Text("/Month",
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                  ],
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          )
        ],
      );
    },);
  }
}

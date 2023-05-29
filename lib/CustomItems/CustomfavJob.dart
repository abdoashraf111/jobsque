import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/controller/data_cubit.dart';
import 'custom_icons.dart';
class CustomFavJob extends StatelessWidget {
   CustomFavJob({Key? key,required this.index}) : super(key: key);
  var click=0;
  int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("name",
                      style: TextStyle(
                          color: Colors.black, fontSize: 18)),
                  SizedBox(
                    height: 4,
                  ),
                  Text("compName • United States",
                      style: TextStyle(
                          color: Colors.black, fontSize: 12)),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                  onPressed: ()async {
                    var x=BlocProvider.of<DataCubit>(context).showFavModel.data![index].id;
                    await BlocProvider.of<DataCubit>(context).deleteFavorites(jobId:x.toString() );

                  },
                  icon: click == 1
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
                child: const Center(
                    child: Text("jobTimeType",
                        style: TextStyle(
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
                    child: Text("jobLevel",
                        style: const TextStyle(
                            color: Colors.blue, fontSize: 12))),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(" salary",
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
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/controller/data_cubit.dart';
import 'package:jobsque/view/screens/HomeScreen/saveScreen/saved_cubit.dart';

import '../../../../CustomItems/CustomfavJob.dart';
import '../HomeScreen.dart';

class SavedScreen extends StatelessWidget {
    SavedScreen({Key? key}) : super(key: key);
    int numb=0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedCubit,SavedState>(builder: (context, state) {
       numb =BlocProvider.of<DataCubit>(context).showFavModel.data!.length;
      return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                    const Spacer(flex: 3,),
                    const Text("Saved"),
                    const Spacer(flex: 4,),
                  ],
                ),
              ),
               const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 36,
                color: const Color(0xffE5E7EB),
                child:  Padding(
                  padding: const EdgeInsets.only(right:24 ,left: 24,),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$numb Job Saved"),
                    ],
                  ),
                ) ,
              ),
              SizedBox(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 24,left: 24),
                      child: CustomFavJob(index: index,),
                    ),
                    separatorBuilder: (context, index) => const Column(
                      children: [
                        SizedBox(height: 10,),
                        Divider(height: 20,color: Colors.grey,),
                      ],
                    ),

                    itemCount: numb),
              )
            ],
          ),
        ),
      );
    });
  }
}

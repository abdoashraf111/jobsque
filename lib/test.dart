import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/CustomItems/Custom_Card.dart';
import 'package:jobsque/test_cubit.dart';

class test extends StatelessWidget {
   test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        builder: (context, state) {
          return Scaffold(
              body: Center(child: Text("fsdfdsfs")));
        },
        listener: (context, state) {

        },)
    ;
  }
}

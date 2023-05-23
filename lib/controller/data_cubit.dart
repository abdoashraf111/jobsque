import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../Services/AuthAPI.dart';
import '../Services/api_showjobs.dart';
import '../models/SignInModel.dart';
import '../models/showjobsModel.dart';
part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());


  // Future<dynamic> getAuth({required String url}) async {
  //   http.Response response = await http.get(Uri.parse(url));
  //   if (response.statusCode == 200) {
  //     var data = jsonDecode(response.body);
  //     token = data["token"];
  //     print(token);
  //     return data;
  //   } else {
  //     throw Exception(
  //         'there is a problem with status code ${response.statusCode}');
  //   }
  // }

  Future<dynamic> postAuth({
    required String url,
    dynamic body,
  }) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    Map<String, dynamic> data = jsonDecode(response.body);
    if (data["status"] == true) {

    }
    emit(DataJobSuccess());
    return data;
  }

  // Future<Showjobs> getShowJob() async {
  //   emit(DataLoading());
  //   http.Response response = await http.get(
  //       Uri.parse(
  //         "http://164.92.246.77/api/jobs",
  //       ),
  //       headers: {
  //         'Authorization': 'Bearer 649|cUYeN9T8Vgwikz3rBDPGVvAQnl8khwoda4A4jCuM'
  //       });
  //   Map<String,dynamic> Jason=jsonDecode(response.body);
  //   Showjobs model = Showjobs.fromJson(Jason);
  //   print(model);
  //   print(model.data![1].name);
  //   return model;
  // }
  Showjobs? mo;
  ApiShowJobs? serv;

  getJob() async {
    emit(DataLoading());
    try {
      mo = await serv?.get();
      emit(DataJobSuccess());
    } on Exception catch (e) {
      emit(DataJobFailure());
    }
  }

  AuthService SS=AuthService();
  SignInModel MM=SignInModel();
  String v="";

  postSignIn({required String password, required String email}) async {
   MM = await SS.signIn(password: password, email: email);

  }
}

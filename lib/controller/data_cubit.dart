import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
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
  SignInModel signModel=SignInModel();
  Future<dynamic> postAuth({required String url, dynamic body,
  }) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    Map<String, dynamic> json = jsonDecode(response.body);
      SignInModel model=SignInModel.fromJson(json);
      signModel=model;
      print(signModel.token);
    return model;
  }




  Showjobs jobModel=Showjobs();
  Future<Showjobs> getJob() async {
    emit(DataLoading());
    try {
      http.Response response = await http.get(
          Uri.parse(
            "http://164.92.246.77/api/jobs",
          ),
          headers: {
            'Authorization': 'Bearer 649|cUYeN9T8Vgwikz3rBDPGVvAQnl8khwoda4A4jCuM'
          });
      Map<String,dynamic> json=jsonDecode(response.body);
      Showjobs model = Showjobs.fromJson(json);
      print(model);
      print(model.data![1].name);
      jobModel=model;
      return model;
    } on Exception catch (e) {
      throw Exception(e.toString());

    }
  }





  Future<SignInModel> postSignIn ({required String password,required String email})async
  {
    try {
      final response = await http.post(
          Uri.parse("http://164.92.246.77/api/auth/login",),
          body: {
            "password":password ,
            "email": email,
          }
      );
      SignInModel user=SignInModel.fromJson(jsonDecode(response.body));
      print(user.token);
      print(user.user?.name.toString());
      return user;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }

  }

}

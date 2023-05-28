import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../models/SignInModel.dart';
import '../models/showjobsModel.dart';
part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());



  SignInModel modelSign=SignInModel();
  Future<SignInModel> postSignIn ({required String password,required String email})async {
    emit(DataSignLoading());
    try {
      http.Response response = await http.post(
          Uri.parse("http://167.71.79.133/api/auth/login",),
          body: {
            "password":password ,
            "email": email,
          }
      );
      SignInModel user=SignInModel.fromJson(jsonDecode(response.body));
      modelSign=user;
      emit(DataSignSuccess());
      // print(user.token);
      // print(user.user?.name.toString());
      return user;
    } on Exception catch (e) {
      emit(DataSignFailure());
      throw Exception(e.toString());

    }
  }

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
  SignInModel modelRegister=SignInModel();
  Future<dynamic> postRegister({required String name,required String email,required String password, dynamic body,}) async {
    String url="http://167.71.79.133/api/auth/register?name=$name&email=$email&password=$password";
    http.Response response = await http.post(Uri.parse(url), body: body);
    Map<String, dynamic> json = jsonDecode(response.body);
      SignInModel model=SignInModel.fromJson(json);
      modelRegister=model;
      // print(modelRegister.token);
    return model;
  }

  Showjobs modelJob=Showjobs();
  Future<Showjobs> getJob() async {
    emit(DataJobLoading());
    try {
      http.Response response = await http.get(
          Uri.parse(
            "http://167.71.79.133/api/jobs",
          ),
          headers: {
            'Authorization': 'Bearer 649|cUYeN9T8Vgwikz3rBDPGVvAQnl8khwoda4A4jCuM'
          });
      Map<String,dynamic> json=jsonDecode(response.body);
      Showjobs model = Showjobs.fromJson(json);
      print("loooooooooooook");
      print(model.data![1].compEmail);
      modelJob=model;
      emit(DataJobSuccess());
      return model;
    } on Exception catch (e) {
      emit(DataJobFailure());
      throw Exception(e.toString());

    }
  }
  Future<dynamic> sendEmail({required String email}) async {
    try {
      final smtpServer=gmail(email, psds);
      final message=Message()
      ..from=Address(email)
        ..recipients=["abdoashraf11.aa@gmail.com"]
        ..text="sdsdsdsd"
        ..subject="sdsdsdsd";
      await send(message, smtpServer);
      print("gooood");
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }




}

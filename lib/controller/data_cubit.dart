import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../Services/sharedprefeances.dart';
import '../models/SignInModel.dart';
import '../models/addFavModel.dart';
import '../models/showFavModel.dart';
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
      MyCache.SetString(
          key: MyChachKey.token,
          value: "Bearer ${user.token.toString()}");
      MyCache.SetString(
          key: MyChachKey.userId,
          value: user.user!.id.toString());
      print("id is ...............${user.user!.id}");
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
            'Authorization':MyCache.GetString(key: MyChachKey.token),
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
  // Future<dynamic> sendEmail({required String email}) async {
  //   try {
  //     final smtpServer=gmail(email, psds);
  //     final message=Message()
  //     ..from=Address(email)
  //       ..recipients=["abdoashraf11.aa@gmail.com"]
  //       ..text="sdsdsdsd"
  //       ..subject="sdsdsdsd";
  //     await send(message, smtpServer);
  //     print("gooood");
  //   } on Exception catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }

  AddFavorite modelAddFav=AddFavorite();
  Future<dynamic> addFavorites({required int jobId}) async {
    String userId=MyCache.GetString(key: MyChachKey.userId);
    try {
      String url="http://167.71.79.133/api/favorites?user_id=$userId&job_id=$jobId";
      http.Response response = await http.post(Uri.parse(url), headers:{
        'Authorization':MyCache.GetString(key: MyChachKey.token)
      } );
      Map<String, dynamic> json = jsonDecode(response.body);
      AddFavorite model=AddFavorite.fromJson(json);
      modelAddFav=model;
      print(modelAddFav.data!.id.toString());
      // print(modelRegister.token);
      return model;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }

  ShowFavModel showFavModel=ShowFavModel();
  Future<dynamic> showFavorites() async {
    emit(DataShowLoadingFavorites());
    try {
      String userId=MyCache.GetString(key: MyChachKey.userId);
      String url="http://167.71.79.133/api/favorites/$userId";
      http.Response response = await http.get(Uri.parse(url), headers:{
        'Authorization':MyCache.GetString(key: MyChachKey.token)
      } );
      Map<String, dynamic> json = jsonDecode(response.body);
      ShowFavModel model=ShowFavModel.fromJson(json);
      print(model.data?.length);
      emit(DataShowFavorites());
      showFavModel=model;
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
    // print(modelRegister.token);
  }


  Future<dynamic> deleteFavorites({required String jobId}) async {
    emit(DataDeleteLoadingFavorites());
    try {
      String url="http://167.71.79.133/api/favorites/$jobId";
      http.Response response = await http.delete(Uri.parse(url), headers:{
        'Authorization':MyCache.GetString(key: MyChachKey.token)
      } );
      Map<String, dynamic> json = jsonDecode(response.body);
      ShowFavModel model=ShowFavModel.fromJson(json);
      emit(DataDeleteFavorites());
      print(model.data![5].jobId);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }


}

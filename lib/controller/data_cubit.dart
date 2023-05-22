import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../models/showjobsModel.dart';

part 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());
  String token = 'non';
  var modelShow;

  Future<dynamic> getAuth({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      token = data["token"];
      print(token);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> postAuth({required String url, dynamic body,}) async {
    http.Response response = await http.post(Uri.parse(url), body: body);
    Map<String, dynamic> data = jsonDecode(response.body);
    if (data["status"] == true) {
      token = data['token'];
      print(token);
    }
    emit(DataInter());
    return data;
  }

  Future<Showjobs> getShowJob() async {
    http.Response response = await http.get(
        Uri.parse("http://164.92.246.77/api/jobs",),headers:{
      'Authorization':'Bearer 649|cUYeN9T8Vgwikz3rBDPGVvAQnl8khwoda4A4jCuM'
    } );
    Showjobs model=Showjobs.fromJson(jsonDecode(response.body));
    print(model);
    print(model.data![1].name);
    modelShow=model;
    return model;
  }
//   showFun()async{
// modelShow =await
//   }
}

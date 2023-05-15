import 'dart:convert';
import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/showjobs.dart';

class ApiShowJobs {
  Future<dynamic> get() async {
    http.Response response = await http.get(
        Uri.parse("http://164.92.246.77/api/jobs",),headers:{
    } );
    String? header=response.headers["Authorization"];
    Showjobs model=Showjobs.fromJson(jsonDecode(response.body));
print(model);
print(model.data![1].name);
      return model;

  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    // if (token != null) {
    //   headers.addAll({'sdasd': 'dddd', 'sdasd': 'dddd',});
    // }
    http.Response response =
    await http.post(Uri.parse(url), body: body, headers: headers);
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  }
}

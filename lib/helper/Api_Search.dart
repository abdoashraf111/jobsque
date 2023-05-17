import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import '../models/Modelsearch.dart';
import '../models/showjobs.dart';

class ApiSearch {
  Future<dynamic> get() async {
    http.Response response = await http.get(
        Uri.parse("http://164.92.246.77/api/jobs/search?name=ux",),headers:{
      'Authorization':'Bearer 694|RMhD8jThQGsdy7nNXytmW1QXPxh6Z8G9TgNTEoQW'
    } );
    Modelsearch model=Modelsearch.fromJson(jsonDecode(response.body));
    return model;

  }


}

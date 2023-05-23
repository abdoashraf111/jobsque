import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../models/showjobsModel.dart';

class ApiShowJobs {
  Future<dynamic> get() async {
    http.Response response = await http.get(
        Uri.parse("http://164.92.246.77/api/jobs",),headers:{
          'Authorization':'Bearer 649|cUYeN9T8Vgwikz3rBDPGVvAQnl8khwoda4A4jCuM'
    } );
    Showjobs model=Showjobs.fromJson(jsonDecode(response.body));
print(model);
print(model.data![1].name);
      return model;

  }

}

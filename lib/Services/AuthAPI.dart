import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobsque/models/SignInModel.dart';
import 'package:jobsque/view/screens/Signin/Signin.dart';
class AuthService{
  // Future<dynamic> postAuth({required String url, dynamic body,}) async {
  //   http.Response response = await http.post(Uri.parse(url), body: body);
  //   Map<String, dynamic> data = jsonDecode(response.body);
  //   return data;
  // }

  Future<SignInModel> signIn ({required String password,required String email})async
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
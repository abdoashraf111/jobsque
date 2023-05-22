import 'User.dart';

class AuthModel {
  AuthModel({
      this.user,
      this.token, 
      this.status,});

  AuthModel.fromJson(dynamic json) {
    user = (json['user'] != null ? User.fromJson(json['user']) : null)!;
    token = json['token'];
    status = json['status'];
  }
  User? user;
  String? token;
  bool? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user!= null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    map['status'] = status;
    return map;
  }

}
// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    String message;
    String userId;

    LoginModel({
        required this.message,
        required this.userId,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json["message"],
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "userId": userId,
    };
}

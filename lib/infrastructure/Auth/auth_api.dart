import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:inkstop/domain/Auth/I_auth_facade.dart';
import 'package:inkstop/domain/Auth/auth_failure.dart';
import 'package:inkstop/domain/core/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthApi implements IAuthFacade {
  @override
  Future<Either<AuthFailure, LoginModel>> login(
      {required String identifier, required String password}) async {
    var headers = {'contents-Type': 'application/json'};
    var dio = Dio();
    // print(username);
    var data = json.encode({"identifier": identifier, "password": password});

    try {
      var response = await dio.request("http://localhost:3000/login",
          options: Options(headers: headers, method: 'POST'), data: data);

      if (response.statusCode == 200) {
        final LoginModel loginData = LoginModel.fromJson(response.data);
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString("username", identifier);
        final u=await prefs.getString("username");
        print("inside login the value of username is : $u");
        return right(loginData);
      } else {
        final errorMessage = response.data["error"] ?? "Unknown error occurred";
        if (errorMessage == "Invalid username, email, or Aadhaar number") {
          return left(const AuthFailure.ServerError());
        } else if (errorMessage == "Invalid password") {
          return left(const AuthFailure.InvalidPassword());
        } else if (errorMessage == "Error logging in") {
          return left(const AuthFailure.ServerError());
        } else {
          return left(const AuthFailure.ServerError());
        }
      }
    } on DioException catch (e) {
      print(e);
      return left(const AuthFailure.ServerError());
    }
  }
}

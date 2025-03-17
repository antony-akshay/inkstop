import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inkstop/domain/Auth/signup/I_signup_facade.dart';
import 'package:inkstop/domain/Auth/signup/signup_failure.dart';

class SignupApi implements ISignupFacade {
  @override
  Future<Either<SignupFailure, Unit>> signup(
      {required String firstname,
      required String lastname,
      required String phone,
      required String email,
      required String username,
      required String password,
      required String aAdharno}) async {
    var headers = {'Content-Type': 'application/json'};
    var dio = Dio();
    var data = json.encode({
      "username": username,
      "email": email,
      "password": password,
      "firstName": firstname,
      "lastName": lastname,
      "phone": phone,
      "aadhaarNumber": aAdharno
    });

    try {
      var response = await dio.request("http://localhost:3000/api/documents",
          options: Options(method: 'POST', headers: headers), data: data);
      print(response.statusCode);
      var responseData = response.data;
      if (response.statusCode == 201) {
        // print(response.statusCode);
        // var responseData = response.data;
        // if (responseData['message'] == 'Some recipients do not exist') {
        //   return left(const DocFailures.userDoesNotExist());
        // }
        return right(unit);
      } else if (response.statusCode == 400) {
        if (responseData['error'] == "Aadhaar already registered") {
          return left(const SignupFailure.AadharAlreadyExists());
        }
        if (responseData['error'] == "Email already registered") {
          return left(const SignupFailure.EmailAlreadyExists());
        }
        if (responseData['error'] == 'Username already taken') {
          return left(const SignupFailure.UsernameAlreadyExists());
        }
      }
      return left(const SignupFailure.ServerError());
    } catch (e) {
      return left(const SignupFailure.ServerError());
    }
  }
}

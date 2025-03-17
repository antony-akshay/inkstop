import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inkstop/domain/Auth/signup/I_signup_facade.dart';
import 'package:inkstop/domain/Auth/signup/signup_failure.dart';

class SignupApi implements ISignupFacade {
  @override
  Future<Either<SignupFailure, Unit>> signup({
    required String firstname,
    required String lastname,
    required String phone,
    required String email,
    required String username,
    required String password,
    required String aAdharno,
  }) async {
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
      print("🔵 Sending Signup Request...");
      var response = await dio.post(
        "http://localhost:3000/signup", // ✅ Ensure API endpoint is correct
        options: Options(headers: headers),
        data: data,
      );

      var responseData = response.data; // ✅ Always assign before using it
      print("✅ Response Status Code: ${response.statusCode}");
      print("✅ Response Data: $responseData");

      if (response.statusCode == 201) {
        print("🎉 Signup Successful!");
        return right(unit);
      } else if (response.statusCode == 400) {
        if (responseData['error'] == "Aadhaar already registered") {
          return left(const SignupFailure.AadharAlreadyExists());
        }
        if (responseData['error'] == "Email already registered") {
          return left(const SignupFailure.EmailAlreadyExists());
        }
        if (responseData['error'] == "Username already taken") {
          return left(const SignupFailure.UsernameAlreadyExists());
        }
      }

      print("❌ Unexpected Response - Returning ServerError");
      return left(const SignupFailure.ServerError());
    } catch (e) {
      print("🚨 Signup API Error: $e");
      if (e is DioError) {
        print("❌ Dio Error Type: ${e.type}");
        print("❌ Dio Error Response: ${e.response}");
        print("❌ Dio Error Message: ${e.message}");
      }
      return left(const SignupFailure.ServerError());
    }
  }
}

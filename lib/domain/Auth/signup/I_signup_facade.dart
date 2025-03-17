import 'package:dartz/dartz.dart';
import 'package:inkstop/domain/Auth/signup/signup_failure.dart';

abstract class ISignupFacade {
  Future<Either<SignupFailure, Unit>> signup(
      {required String firstname,
      required String lastname,
      required String phone,
      required String email,
      required String username,
      required String password,
      required String aAdharno});
}

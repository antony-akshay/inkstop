import 'package:dartz/dartz.dart';
import 'package:inkstop/domain/Auth/auth_failure.dart';
import 'package:inkstop/domain/core/login_model.dart';


abstract class IAuthFacade {
  Future<Either<AuthFailure, LoginModel>> login(
      {required String identifier, required String password});
}

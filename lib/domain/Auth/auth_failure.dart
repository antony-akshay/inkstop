import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.InvalidCredentials() = invalidcredentials;
  const factory AuthFailure.InvalidPassword() = invalidpassword;
  const factory AuthFailure.ServerError() = servererror;
}

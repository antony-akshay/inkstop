import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_failure.freezed.dart';

@freezed
class SignupFailure with _$SignupFailure {
  const factory SignupFailure.AadharAlreadyExists() = aadharAlreadyExists;
  const factory SignupFailure.EmailAlreadyExists() = emailAlreadyExists;
  const factory SignupFailure.UsernameAlreadyExists() = usernameAlreadyExists;
  const factory SignupFailure.ServerError() = servererror;
}

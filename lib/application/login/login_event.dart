part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginButtonPressed({
    required String identifier,
    required String password
  }) = _loginButtonPressed;
}
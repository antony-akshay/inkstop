part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {required bool isSubmitting,
      required Option<Either<AuthFailure, Unit>> succesFailure,
      }) = _LoginState;

  factory LoginState.initial() => const LoginState(isSubmitting: false, succesFailure: None());
}

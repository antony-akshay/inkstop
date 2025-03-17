part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signupButtonPressed({
  required String firstname,
  required String lastname,
  required String phone,
  required String email,
  required String username,
  required String password,
  required String aAdharno
  })=_signupButtonPressed;
}
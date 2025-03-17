part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {

  const factory SignupState({
    required bool isSubmitting,
    required Option<Either<SignupFailure,Unit>> successOrFailure
  })=_SignupState;

   factory SignupState.initial() => const SignupState(isSubmitting:false,successOrFailure: None());
}

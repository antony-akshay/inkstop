import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkstop/domain/Auth/signup/I_signup_facade.dart';
import 'package:inkstop/domain/Auth/signup/signup_failure.dart';
import 'package:inkstop/infrastructure/Auth/signup/signup_api.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final  facade = SignupApi();

  SignupBloc() : super(SignupState.initial()) {
    on<SignupEvent>((event, emit) async {
      await event.map(
        signupButtonPressed: (e) async {
          emit(state.copyWith(isSubmitting: true, successOrFailure: none()));
          print("🟡 Inside Bloc: Sending signup request...");

          final response = await facade.signup(
            firstname: e.firstname,
            lastname: e.lastname,
            phone: e.phone,
            email: e.email,
            username: e.username,
            password: e.password,
            aAdharno: e.aAdharno,
          );

          await response.fold(
            (failure) async {
              print("❌ Signup Failed: $failure");
              emit(state.copyWith(
                isSubmitting: false,
                successOrFailure: some(left(failure)),
              ));
            },
            (success) async {
              print("✅ Signup Success!");
              emit(state.copyWith(
                isSubmitting: false,
                successOrFailure: some(right(success)),
              ));
            },
          );
        },
      );
    });
  }
}

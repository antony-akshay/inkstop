import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkstop/domain/Auth/signup/signup_failure.dart';
import 'package:inkstop/infrastructure/Auth/signup/signup_api.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final facade = SignupApi();

  SignupBloc() : super(SignupState.initial()) {
    on<SignupEvent>((event, emit) async {
      await event.map(
        signupButtonPressed: (e) async {
          emit(state.copyWith(isSubmitting: true, successOrFailure: none()));
          print("🟡 Inside Bloc: Sending signup request...");

          try {
            // ✅ Ensure API call is awaited before proceeding
            final response = await facade.signup(
              firstname: e.firstname,
              lastname: e.lastname,
              phone: e.phone,
              email: e.email,
              username: e.username,
              password: e.password,
              aAdharno: e.aAdharno,
            );

            if (!emit.isDone) {
              // ✅ Ensure Bloc is still active before emitting
              response.fold(
                (failure) {
                  print("❌ Signup Failed: $failure");
                  emit(state.copyWith(
                    isSubmitting: false,
                    successOrFailure: some(left(failure)),
                  ));
                },
                (success) {
                  print("✅ Signup Success!");
                  emit(state.copyWith(
                    isSubmitting: false,
                    successOrFailure: some(right(success)),
                  ));
                },
              );
            }
          } catch (e) {
            print("🚨 Exception in Signup: $e");
            if (!emit.isDone) {
              emit(state.copyWith(
                isSubmitting: false,
                successOrFailure: some(left(const SignupFailure.ServerError())),
              ));
            }
          }
        },
      );
    });
  }
}

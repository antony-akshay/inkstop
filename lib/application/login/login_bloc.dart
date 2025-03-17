import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkstop/domain/Auth/auth_failure.dart';
import 'package:inkstop/infrastructure/Auth/auth_api.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

final authFacade = AuthApi();

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      event.map(loginButtonPressed: (e) async {
        final response = await authFacade.login(
            identifier: e.identifier, password: e.password);

        response.fold((failure) {
          emit(state.copyWith(
            isSubmitting: false,
            succesFailure: some(left(failure)),
          ));
        }, (success) {
          emit((state.copyWith(
            succesFailure: some(right(unit))
          )));
        });
      });
    });
  }
}

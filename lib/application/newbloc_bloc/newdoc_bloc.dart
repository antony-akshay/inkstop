import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkstop/domain/newdoc/newdoc_failures.dart';

part 'newdoc_event.dart';
part 'newdoc_state.dart';
part 'newdoc_bloc.freezed.dart';

class NewdocBloc extends Bloc<NewdocEvent, NewdocState> {
  NewdocBloc() : super(NewdocState.initial()) {
    on<NewdocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

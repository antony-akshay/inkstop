import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:inkstop/domain/newdoc/newdoc_failures.dart';
import 'package:inkstop/infrastructure/newdoc/newdoc_api.dart';

part 'newdoc_bloc.freezed.dart';
part 'newdoc_event.dart';
part 'newdoc_state.dart';


@injectable
class NewdocBloc extends Bloc<NewdocEvent, NewdocState> {
  final  newdoc  = CreateNewDoc();
  NewdocBloc() : super(NewdocState.initial()) {
    on<NewdocEvent>((event, emit) async {
      await event.map(createButtonPressed: (e) async {
        print('inside bloc');
        emit(state.copyWith(
          isSubmitting: true,
          successFailure: none(),
        ));
        final resp = await newdoc.createdoc(
          docname: e.docname,
          docSubject: e.docSubject,
          docContent: e.docContent,
          recipients: e.recipients,
        );
        resp.fold(
          (failure) {
            print(failure);
            // If failure, emit the state with the failure
            emit(state.copyWith(
                isSubmitting: false, successFailure: some(left(failure))));
          },
          (r) {
            print(r);
            // If success, emit the state with the documents
            emit(state.copyWith(
              isSubmitting: false,
              successFailure: some(right(unit)),
            ));
          },
        );
      });
    });
  }
}

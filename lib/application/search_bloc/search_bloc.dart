import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkstop/domain/core/docmodel.dart';
import 'package:inkstop/domain/search/search_failures.dart';
import 'package:inkstop/infrastructure/search/search_api.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState.initial()) {
    on<SearchEvent>((event, emit) async {
      await event.map(
        searchButtonPressed: (e) async {
          // Start by emitting the submitting state
          emit(state.copyWith(
            isSubmitting: true,
            succesFailure: none(),
          ));

          // Perform the API call
          final response = await DocSearchApi.fetchDoc(docid: e.docid);

          // Handle the response
          response.fold(
            (failure) {
              // If failure, emit the state with the failure
              emit(state.copyWith(
                isSubmitting: false,
                succesFailure: some(left(failure)),
              ));
            },
            (documents) {
              // If success, emit the state with the documents
              emit(state.copyWith(
                isSubmitting: false,
                succesFailure: some(right(unit)),
                data: documents,
              ));
            },
          );
        },
      );
    });
  }
}

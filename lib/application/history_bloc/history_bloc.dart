import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkstop/domain/core/history_model.dart';
import 'package:inkstop/domain/history/history_failures.dart';
import 'package:inkstop/infrastructure/history/history_api.dart';

part 'history_bloc.freezed.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final historyapi = HistoryApi();
  HistoryBloc() : super(HistoryState.initial()) {
    on<HistoryEvent>((event, emit) async {
      await event.map(fetchHistory: (e) async {
        emit(state
            .copyWith(model: [], successOrFailure: const None(), Search: true));
        print('inside history bloc $e.username');
        final response = await historyapi.fetchhistory(username: e.username);

        response.fold((failure) {
          emit(state.copyWith(
              Search: true, model: [], successOrFailure: some(left(failure))));
        }, (history) {
          emit(state.copyWith(
              Search: false,
              model: history,
              successOrFailure: some(right(unit))));
        });
      });
    });
  }
}

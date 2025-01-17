part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState(
          {required List<HistoryModel> model,
          required Option<Either<HistoryFailures, Unit>> successOrFailure,
          required bool Search
          }) =
      _HistoryState;

  factory HistoryState.initial() =>
      const HistoryState(model: [], successOrFailure: None(),Search: true);
}

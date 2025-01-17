import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_failures.freezed.dart';

@freezed
class HistoryFailures with _$HistoryFailures {
  const factory HistoryFailures.error() = Error;
  const factory HistoryFailures.cancelledByUser() = CancelledByUser;
  const factory HistoryFailures.serverFailure() = ServerFailure;
}


import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_failures.freezed.dart';

@freezed
class SearchFailures with _$SearchFailures {
  const factory SearchFailures.notFound() = NotFound;
  const factory SearchFailures.cancelledByUser() = CancelledByUser;
  const factory SearchFailures.serverFailure() = ServerFailure;
}

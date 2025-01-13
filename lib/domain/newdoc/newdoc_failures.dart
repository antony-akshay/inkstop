import 'package:freezed_annotation/freezed_annotation.dart';

part 'newdoc_failures.freezed.dart';

@freezed
class DocFailures with _$DocFailures {
  const factory DocFailures.cancelledByUser() = CancelledByUser;
  const factory DocFailures.serverFailure() = ServerFailure;
  const factory DocFailures.userDoesNotExist() = UserDoesNotExist;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_failures.freezed.dart';

@freezed
class NotificationFailures with _$NotificationFailures {
  // const factory NotificationFailures.cancelledByUser() = CancelledByUser;
  const factory NotificationFailures.serverFailure() = ServerFailure;
  const factory NotificationFailures.errorOccured() = ErrorOccured;
}

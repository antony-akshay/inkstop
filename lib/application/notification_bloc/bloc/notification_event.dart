part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.updateStatus(
      {required String username, required String status,required String docId}) = _updateStatus;

  const factory NotificationEvent.fetchNotification(
      {required String username}) = _fetchNotification;
}

part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState(
      {required List<NotificationModel> model,
      required Option<Either<NotificationFailures, Unit>> successorFailure,
      required bool isFetching}) = _NotificationState;

  factory NotificationState.intial() =>
      NotificationState(model: [], successorFailure: None(), isFetching: true);
}

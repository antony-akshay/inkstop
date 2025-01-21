import 'package:dartz/dartz.dart';
import 'package:inkstop/domain/core/notification_model.dart';
import 'package:inkstop/domain/notifications/notification_failures.dart';

abstract class INotificationFacade {
  Future<Either<NotificationFailures, List<NotificationModel>>>
      fetchnotification({required String username});
  Future<Either<NotificationFailures, Unit>> updateStatus(
      {required String username, required String status});
}

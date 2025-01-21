import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inkstop/domain/core/notification_model.dart';
import 'package:inkstop/domain/notifications/I_notification_facade.dart';
import 'package:inkstop/domain/notifications/notification_failures.dart';

class NotificationApi implements INotificationFacade {
  @override
  Future<Either<NotificationFailures, List<NotificationModel>>>
      fetchnotification({required String username}) async {
    var headers = {'contents-TYpe': 'application/json'};
    var dio = Dio();
    var data = jsonEncode({"username": username});

    try {
      var response = await dio.request(
          'http://localhost:3000/api/notifications/$username',
          options: Options(method: 'GET',headers: headers),data: data);

      if (response.statusCode == 200) {
        final List<NotificationModel> notifications =
            List<NotificationModel>.from(
          response.data.map((json) => NotificationModel.fromJson(json)),
        );
        return right(notifications);
      } else {
        return left(const NotificationFailures.errorOccured());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return left(const NotificationFailures.errorOccured());
      } else {
        return left(const NotificationFailures.serverFailure());
      }
    }
  }

  @override
  Future<Either<NotificationFailures, Unit>> updateStatus(
      {required String username, required String status}) {
    // TODO: implement updateStatus
    throw UnimplementedError();
  }
}

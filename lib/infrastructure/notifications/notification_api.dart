import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inkstop/domain/core/notification_model.dart';
import 'package:inkstop/domain/notifications/I_notification_facade.dart';
import 'package:inkstop/domain/notifications/notification_failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationApi implements INotificationFacade {
  @override
  Future<Either<NotificationFailures, List<NotificationModel>>>
      fetchnotification({required String username}) async {
    var headers = {'contents-TYpe': 'application/json'};
    var dio = Dio();
    print("notifications api:$username");
    var data = jsonEncode({"username": username});

    print('inside api');
    try {
      var response = await dio.request('http://localhost:3000/notifications/$username',
          options: Options(method: 'GET', headers: headers), data: data);
      print(response.statusCode);
      print(response.data);

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
      {required String username,
      required String status,
      required String docId}) async {
    var headers = {'Content-Type': 'application/json'};
    var dio = Dio();
    var data = jsonEncode({
      "recipient": username,
      "doc_id": docId,
      "status": status,
      "feedback": "Looks good to me."
    });

    print("${docId},${username},${status}");

    print('inside api');
    try {
      var response = await dio.put(
        'http://localhost:3000/update-status',
        options: Options(headers: headers),
        data: data,
      );
      print(response.statusCode);
      print(response.data);
      print("this is the code for status ${response.statusCode}");

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const NotificationFailures.errorOccured());
      }
    } catch (e) {
      return left(const NotificationFailures.errorOccured());
    }
  }

  Future<String?> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString("username");
  }
}

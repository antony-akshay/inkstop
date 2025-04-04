import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inkstop/domain/core/notification_model.dart';
import 'package:inkstop/domain/notifications/notification_failures.dart';
import 'package:inkstop/infrastructure/notifications/notification_api.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final notificationapi = NotificationApi();

  NotificationBloc() : super(NotificationState.intial()) {
    on<NotificationEvent>((event, emit) async {
      await event.map(updateStatus: (e) async {
        print("update");
        final response = await notificationapi.updateStatus(
            username: e.username, status: e.status, docId: e.docId);
        response.fold((l) {}, (r) {});
      }, fetchNotification: (e) async {
        print('fetch');
        emit(
          state.copyWith(
              isFetching: true, successorFailure: const None(), model: []),
        );
        print("username inside notification bloc ${event.username}");
        final response =
            await notificationapi.fetchnotification(username: event.username);
        response.fold((failure) {
          emit(state.copyWith(
              isFetching: false,
              model: [],
              successorFailure: some(left(failure))));
        }, (notifications) {
          emit(state.copyWith(
              isFetching: false,
              model: notifications,
              successorFailure: some(right(unit))));
        });
      });
    });
  }
}

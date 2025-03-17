import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:inkstop/domain/core/history_model.dart';
import 'package:inkstop/domain/history/I_history_facade.dart';
import 'package:inkstop/domain/history/history_failures.dart';

@LazySingleton(as: IHistoryFacade)
class HistoryApi implements IHistoryFacade {
  @override
  Future<Either<HistoryFailures, List<HistoryModel>>> fetchhistory(
      {required String username}) async {
    var headers = {'contents-Type': 'application/json'};
    var dio = Dio();
    // print(username);
    var data = json.encode({"username": username});

    try {
      var response = await dio.request(
          "http://localhost:3000/api/history/$username",
          options: Options(headers: headers, method: 'GET',),data: data);

      if (response.statusCode == 200) {
        final List<HistoryModel> history = List<HistoryModel>.from(
          response.data.map((json) => HistoryModel.fromJson(json)),
        );
        return right(history);
      } else {
        return left(HistoryFailures.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionError) {
        return left(const HistoryFailures.error());
      } else {
        return left(const HistoryFailures.serverFailure());
      }
    }
  }
}

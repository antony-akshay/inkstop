import 'package:dartz/dartz.dart';
import 'package:inkstop/domain/core/history_model.dart';
import 'package:inkstop/domain/history/history_failures.dart';



abstract class IHistoryFacade {
  Future<Either<HistoryFailures,List<HistoryModel>>> fetchhistory(
      {required String username});
}
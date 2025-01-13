import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:inkstop/domain/newdoc/I_newdoc_facade.dart';
import 'package:inkstop/domain/newdoc/newdoc_failures.dart';

@LazySingleton(as: INewdocFacade)
class CreateNewDoc implements INewdocFacade {
  @override
  Future<Either<DocFailures, Unit>> createdoc({
    required String docname,
    required String docSubject,
    required String docContent,
    required List<String> recipients,
  }) async {
    var headers = {'Content-Type': 'application/json'};
    var dio = Dio();
    var data = json.encode({
      "document_name": docname,
      "subject": docSubject,
      "created_by": "akshay", // Username of the creator
      "content": docContent,
      "recipients": recipients
    });
    print(recipients);

    try {
      var response = await dio.request("http://localhost:3000/api/documents",
          options: Options(method: 'POST', headers: headers), data: data);
      if (response.statusCode == 200) {
        print(response.statusCode);
        var responseData = response.data;
        if (responseData['message'] == 'Some recipients do not exist') {
          // print(
          //     "Document created successfully with ID: ${responseData['doc_id']}");
          print('hi');
          return left(const DocFailures.userDoesNotExist());
        }
        return right(unit);
      } else if (response.statusCode == 400) {
        return left(const DocFailures.userDoesNotExist());
      }
      return left(const DocFailures.serverFailure());
    } on DioException catch (e) {
      print("e is $e");
      if (e.type == DioExceptionType.cancel) {
        return left(const DocFailures.cancelledByUser());
      } else if (e.type == DioExceptionType.badResponse) {
        print('val');
        return left(const DocFailures.serverFailure());
      } else {
        print(e);
        return left(const DocFailures.serverFailure());
      }
    }
  }
}

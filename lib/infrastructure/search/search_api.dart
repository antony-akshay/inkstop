import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inkstop/domain/core/docmodel.dart';
import 'package:inkstop/domain/search/search_failures.dart';

class DocSearchApi {
  static Future<Either<SearchFailures,DocModel>> fetchDoc(
      {required String docid}) async {
    var headers = {'Content-Type': 'application/json'};
    var dio = Dio();
    print('incide apiiiiii');
    try {
      var response = await dio.request(
          "http://localhost:3000/api/document/$docid",
          options: Options(method: 'GET', headers: headers));
      print(response.data);
      print(response.statusCode);
      
      if (response.statusCode == 200) {
        print(response.data);
        print('success');
        final DocModel document = DocModel.fromJson(response.data);
        return right(document);
      } else {
        print('server error');
        return left(const SearchFailures.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const SearchFailures.cancelledByUser());
      } else {
        return left(const SearchFailures.serverFailure());
      }
    }
  }
}

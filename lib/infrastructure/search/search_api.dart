import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:inkstop/domain/core/docmodel.dart';
import 'package:inkstop/domain/search/search_failures.dart';

class DocSearchApi {
  static Future<Either<SearchFailures, List<DocModel>>> fetchDoc(
      {required String docid}) async {
    var headers = {'Content-Type': 'application/json'};
    var dio = Dio();
    try {
      var response = await dio.request(
          "http://localhost:3000/api/documents/$docid",
          options: Options(method: 'GET', headers: headers));
      if (response.statusCode == 200) {
        print(response.data);
        print('success');
        final List<DocModel> documents = List<DocModel>.from(
          response.data.map((json) => DocModel.fromJson(json)),
        );
        return right(documents);
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

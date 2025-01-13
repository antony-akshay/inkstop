import 'package:dartz/dartz.dart';
import 'package:inkstop/domain/newdoc/newdoc_failures.dart';


//firebaseauth,googlesign

abstract class INewdocFacade {
  Future<Either<DocFailures,Unit>> createdoc(
      { required String docname,
      required String docSubject,
      required String docContent,
      required List<String> recipients});
}
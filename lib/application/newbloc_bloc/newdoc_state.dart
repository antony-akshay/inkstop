part of 'newdoc_bloc.dart';

@freezed
class NewdocState with _$NewdocState {
  const factory NewdocState(
          {required bool isSubmitting,
          required String docname,
          required String docSubject,
          required String docContent,
          required List<String> recipients,
          required Option<Either<DocFailures, Unit>> successFailure}) =
      _NewdocState;

  factory NewdocState.initial() => const NewdocState(
        isSubmitting: false,
        docname: '',
        docSubject: '',
        docContent: '',
        recipients: [],
        successFailure: None()
      );
}

part of 'newdoc_bloc.dart';

@freezed
class NewdocEvent with _$NewdocEvent {
  const factory NewdocEvent.createButtonPressed({
    required String username,
    required String docname,
    required String docSubject,
    required String docContent,
    required List<String> recipients,
  }) = _createButtonPressed;
}

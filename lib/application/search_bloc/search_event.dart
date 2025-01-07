part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchButtonPressed({
    required String docid
  }) = _searchButtonPressed;
}
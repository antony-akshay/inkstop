part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
          {required bool isSubmitting,
          required List<DocModel> data,
          required Option<Either<SearchFailures, Unit>> succesFailure}) =
      _SearchState;

  factory SearchState.initial() =>
      const SearchState(isSubmitting: false, succesFailure: None(), data: []);
}

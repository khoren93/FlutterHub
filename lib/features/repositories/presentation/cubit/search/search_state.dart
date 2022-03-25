part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _Loading;

  const factory SearchState.loaded({
    required List<Repository> repositories,
    required List<User> users,
    required bool hasRepositoriesNextPage,
    required bool hasUsersNextPage,
  }) = _Loaded;

  const factory SearchState.error({
    String? message,
    String? url,
  }) = _Error;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);
}

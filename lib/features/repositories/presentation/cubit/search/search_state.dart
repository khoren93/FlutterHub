part of 'search_cubit.dart';

@freezed
class SearchRepositoryState with _$SearchRepositoryState {
  const factory SearchRepositoryState.loading() = _RepositoryLoading;

  const factory SearchRepositoryState.empty() = _RepositoryEmpty;

  const factory SearchRepositoryState.loaded({
    required List<Repository> items,
    required bool hasNextPage,
  }) = _RepositoryLoaded;

  const factory SearchRepositoryState.error({
    String? message,
    String? url,
  }) = _RepositoryError;

  factory SearchRepositoryState.fromJson(Map<String, dynamic> json) =>
      _$SearchRepositoryStateFromJson(json);
}

@freezed
class SearchUserState with _$SearchUserState {
  const factory SearchUserState.loading() = _UserLoading;

  const factory SearchUserState.empty() = _UserEmpty;

  const factory SearchUserState.loaded({
    required List<User> items,
    required bool hasNextPage,
  }) = _UserLoaded;

  const factory SearchUserState.error({
    String? message,
    String? url,
  }) = _UserError;

  factory SearchUserState.fromJson(Map<String, dynamic> json) =>
      _$SearchUserStateFromJson(json);
}

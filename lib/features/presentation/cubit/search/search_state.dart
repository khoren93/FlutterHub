part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.reposFetchInProgress() = _ReposFetchInProgress;
  const factory SearchState.reposFetchEmpty() = _ReposFetchEmpty;
  const factory SearchState.reposFetchSuccess({
    required List<Repository> items,
    required bool hasNextPage,
  }) = _ReposFetchSuccess;
  const factory SearchState.reposFetchError({
    String? message,
    String? url,
  }) = _ReposFetchError;

  const factory SearchState.usersFetchInProgress() = _UsersFetchInProgress;
  const factory SearchState.usersFetchEmpty() = _UsersFetchEmpty;
  const factory SearchState.usersFetchSuccess({
    required List<User> items,
    required bool hasNextPage,
  }) = _UsersFetchSuccess;
  const factory SearchState.usersFetchError({
    String? message,
    String? url,
  }) = _UsersFetchError;

  factory SearchState.fromJson(Map<String, dynamic> json) =>
      _$SearchStateFromJson(json);
}

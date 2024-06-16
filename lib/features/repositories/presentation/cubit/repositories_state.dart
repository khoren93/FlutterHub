part of 'repositories_cubit.dart';

@freezed
class RepositoriesState with _$RepositoriesState {
  const factory RepositoriesState.initial() = _Initial;

  const factory RepositoriesState.reposFetchInProgress() = _FetchInProgress;
  const factory RepositoriesState.reposFetchEmpty() = _FetchEmpty;
  const factory RepositoriesState.reposFetchSuccess({
    required List<Repository> items,
    required bool hasNextPage,
  }) = _FetchSuccess;
  const factory RepositoriesState.reposFetchError({
    String? message,
  }) = _FetchError;

  factory RepositoriesState.fromJson(Map<String, dynamic> json) =>
      _$RepositoriesStateFromJson(json);
}

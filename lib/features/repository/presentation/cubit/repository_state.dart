part of 'repository_cubit.dart';

@freezed
class RepositoryState with _$RepositoryState {
  const factory RepositoryState.fetchInProgress() = _FetchInProgress;

  const factory RepositoryState.fetchSuccess({
    required Repository item,
  }) = _FetchSuccess;

  const factory RepositoryState.fetchError({
    String? message,
    String? url,
  }) = _FetchError;

  factory RepositoryState.fromJson(Map<String, dynamic> json) =>
      _$RepositoryStateFromJson(json);
}

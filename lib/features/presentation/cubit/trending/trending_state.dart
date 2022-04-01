part of 'trending_cubit.dart';

@freezed
class TrendingState with _$TrendingState {
  const factory TrendingState.initial() = _Initial;

  const factory TrendingState.reposFetchInProgress() = _ReposFetchInProgress;
  const factory TrendingState.reposFetchEmpty() = _ReposFetchEmpty;
  const factory TrendingState.reposFetchSuccess({
    required List<TrendingRepository> items,
  }) = _ReposFetchSuccess;
  const factory TrendingState.reposFetchError({
    String? message,
  }) = _ReposFetchError;

  const factory TrendingState.usersFetchInProgress() = _UsersFetchInProgress;
  const factory TrendingState.usersFetchEmpty() = _UsersFetchEmpty;
  const factory TrendingState.usersFetchSuccess({
    required List<TrendingUser> items,
  }) = _UsersFetchSuccess;
  const factory TrendingState.usersFetchError({
    String? message,
  }) = _UsersFetchError;

  factory TrendingState.fromJson(Map<String, dynamic> json) =>
      _$TrendingStateFromJson(json);
}

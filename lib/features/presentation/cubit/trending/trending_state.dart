part of 'trending_cubit.dart';

@freezed
class TrendingRepositoryState with _$TrendingRepositoryState {
  const factory TrendingRepositoryState.loading() = _RepositoryLoading;

  const factory TrendingRepositoryState.empty() = _RepositoryEmpty;

  const factory TrendingRepositoryState.loaded({
    required List<TrendingRepository> items,
  }) = _RepositoryLoaded;

  const factory TrendingRepositoryState.error({
    String? message,
  }) = _RepositoryError;

  factory TrendingRepositoryState.fromJson(Map<String, dynamic> json) =>
      _$TrendingRepositoryStateFromJson(json);
}

@freezed
class TrendingUserState with _$TrendingUserState {
  const factory TrendingUserState.loading() = _UserLoading;

  const factory TrendingUserState.empty() = _UserEmpty;

  const factory TrendingUserState.loaded({
    required List<TrendingUser> items,
  }) = _UserLoaded;

  const factory TrendingUserState.error({
    String? message,
  }) = _UserError;

  factory TrendingUserState.fromJson(Map<String, dynamic> json) =>
      _$TrendingUserStateFromJson(json);
}

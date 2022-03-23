part of 'repository_cubit.dart';

@freezed
class RepositoryState with _$RepositoryState {
  const factory RepositoryState.loading() = _Loading;
  const factory RepositoryState.loaded({required RepositorySearch result}) =
      _Loaded;
  const factory RepositoryState.error() = _Error;

  factory RepositoryState.fromJson(Map<String, dynamic> json) =>
      _$RepositoryStateFromJson(json);
}

part of 'repositories_cubit.dart';

@freezed
class RepositoriesState with _$RepositoriesState {
  const factory RepositoriesState.loading() = CharacterStateLoading;
  const factory RepositoriesState.loaded() = CharacterStateLoaded;
  const factory RepositoriesState.error() = CharacterStateError;

  factory RepositoriesState.fromJson(Map<String, dynamic> json) =>
      _$RepositoriesStateFromJson(json);
}

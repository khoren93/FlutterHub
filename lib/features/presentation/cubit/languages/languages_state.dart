part of 'languages_cubit.dart';

@freezed
class LanguagesState with _$LanguagesState {
  const factory LanguagesState.initial() = _Initial;

  const factory LanguagesState.fetchInProgress() = _FetchInProgress;
  const factory LanguagesState.fetchEmpty() = _FetchEmpty;
  const factory LanguagesState.fetchSuccess({
    required List<RepositoryLanguage> items,
    required RepositoryLanguage? selected,
  }) = _FetchSuccess;
  const factory LanguagesState.fetchError({
    String? message,
  }) = _FetchError;

  factory LanguagesState.fromJson(Map<String, dynamic> json) =>
      _$LanguagesStateFromJson(json);
}

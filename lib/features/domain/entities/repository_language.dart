part of 'models.dart';

@Freezed()
class RepositoryLanguage with _$RepositoryLanguage {
  const RepositoryLanguage._();
  const factory RepositoryLanguage({
    String? name,
    @JsonKey(name: 'urlParam') String? urlParam,
  }) = _RepositoryLanguage;

  factory RepositoryLanguage.fromJson(Map<String, dynamic> json) =>
      _$RepositoryLanguageFromJson(json);
}

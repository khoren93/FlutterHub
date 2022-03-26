part of 'models.dart';

@Freezed()
class TrendingRepository with _$TrendingRepository {
  const TrendingRepository._();
  const factory TrendingRepository({
    String? author,
    String? name,
    String? avatar,
    String? url,
    String? description,
    String? language,
    @JsonKey(name: 'languageColor') String? languageColor,
    int? stars,
    int? forks,
    @JsonKey(name: 'currentPeriodStars') int? currentPeriodStars,
    @JsonKey(name: 'builtBy') List<TrendingUser>? builtBy,
  }) = _TrendingRepository;

  factory TrendingRepository.fromJson(Map<String, dynamic> json) =>
      _$TrendingRepositoryFromJson(json);

  Repository toRepository() {
    return Repository(
      name: name,
      fullName: '$author/$name',
      description: description,
      url: url,
      owner: User(
        login: author,
        avatarUrl: avatar,
      ),
    );
  }
}

part of 'models.dart';

@Freezed()
class Repository with _$Repository {
  const Repository._();
  const factory Repository({
    String? name,
    String? fullName,
    bool? private,
    User? owner,
    String? htmlUrl,
    String? description,
    bool? fork,
    String? createdAt,
    String? updatedAt,
    String? homepage,
    double? size,
    int? stargazersCount,
    String? language,
    int? forksCount,
    bool? archived,
    int? openIssuesCount,
    List<String>? topics,
    String? defaultBranch,
    int? subscribersCount
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

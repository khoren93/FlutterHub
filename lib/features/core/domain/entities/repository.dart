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
    DateTime? createdAt,
    DateTime? updatedAt,
    String? homepage,
    double? size,
    int? stargazersCount,
    String? language,
    String? languageColor,
    int? forksCount,
    bool? archived,
    int? openIssuesCount,
    List<String>? topics,
    String? defaultBranch,
    int? subscribersCount,
    Repository? parent,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);

  int? get color => languageColor.parseColor();
}

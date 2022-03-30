part of 'models.dart';

@Freezed()
class User with _$User {
  const User._();
  const factory User({
    String? login,
    String? avatarUrl,
    String? htmlUrl,
    String? type,
    String? name,
    String? company,
    String? blog,
    String? location,
    String? email,
    String? bio,
    int? publicRepos,
    int? publicGists,
    int? followers,
    int? following,
    String? createdAt,
    String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

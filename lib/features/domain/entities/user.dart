part of 'models.dart';

enum UserType {
  @JsonValue('User')
  user,
  @JsonValue('Organization')
  organization,
}

@Freezed()
class User with _$User {
  const User._();
  const factory User({
    String? login,
    String? avatarUrl,
    String? htmlUrl,
    UserType? type,
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

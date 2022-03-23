part of 'models.dart';

@Freezed()
class User with _$User {
  const User._();
  const factory User({
    String? login,
    String? name,
    String? avatarUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

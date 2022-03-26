part of 'models.dart';

@Freezed()
class TrendingUser with _$TrendingUser {
  const TrendingUser._();
  const factory TrendingUser({
    String? username,
    String? name,
    String? url,
    String? avatar,
    TrendingRepository? repo,
    String? type,
  }) = _TrendingUser;

  factory TrendingUser.fromJson(Map<String, dynamic> json) =>
      _$TrendingUserFromJson(json);

  User toUser() {
    return User(
      login: username,
      name: name,
      avatarUrl: avatar,
    );
  }
}

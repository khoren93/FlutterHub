import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@Freezed()
class RepositorySearch with _$RepositorySearch {
  const RepositorySearch._();
  const factory RepositorySearch({
    List<Repository>? items,
    int? totalCount,
    bool? incompleteResults,
    bool? hasNextPage,
  }) = _RepositorySearch;

  factory RepositorySearch.fromJson(Map<String, dynamic> json) =>
      _$RepositorySearchFromJson(json);
}

@Freezed()
class Repository with _$Repository {
  const Repository._();
  const factory Repository({
    String? name,
    String? fullName,
    String? description,
    String? url,
    User? owner,
  }) = _Repository;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}

@Freezed()
class UserSearch with _$UserSearch {
  const UserSearch._();
  const factory UserSearch({
    List<User>? items,
    int? totalCount,
    bool? incompleteResults,
    bool? hasNextPage,
  }) = _UserSearch;

  factory UserSearch.fromJson(Map<String, dynamic> json) =>
      _$UserSearchFromJson(json);
}

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

part of 'models.dart';

@Freezed()
class UserSearch with _$UserSearch {
  const UserSearch._();
  const factory UserSearch({
    List<User>? items,
    int? totalCount,
    bool? incompleteResults,
  }) = _UserSearch;

  factory UserSearch.fromJson(Map<String, dynamic> json) =>
      _$UserSearchFromJson(json);

  bool get isEmpty => items?.isEmpty ?? true;
  bool get hasNextPage => items?.isNotEmpty ?? false;
}

part of 'models.dart';

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

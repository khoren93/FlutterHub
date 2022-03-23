part of 'models.dart';

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

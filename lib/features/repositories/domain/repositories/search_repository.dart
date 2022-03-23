import '../entities/models.dart';

abstract class SearchRepository {
  Future<RepositorySearch?> searchRepositories(String query, int page);
  Future<UserSearch?> searchUsers(String query, int page);
}

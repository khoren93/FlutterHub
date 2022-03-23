import '../entities/models.dart';

abstract class RepositoryRepository {
  Future<RepositorySearch> searchRepositories(String query, int page);
  Future<Repository> repository(String fullname, String qualifiedName);
}

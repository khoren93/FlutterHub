import 'package:flutterhub/features/repositories/data/datasources/restapi/rest_service.dart';

import '../../domain/entities/models.dart';
import '../../domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._restService);
  final SearchService _restService;

  @override
  Future<RepositorySearch?> searchRepositories(String query, int page) async {
    return (await _restService.searchRepositories(query, page)).body;
  }

  @override
  Future<UserSearch?> searchUsers(String query, int page) async {
    return (await _restService.searchUsers(query, page)).body!;
  }
}

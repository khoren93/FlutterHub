import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/data/datasources/restapi/rest_service.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/models.dart';
import '../../domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._restService);
  final SearchService _restService;

  @override
  Future<Either<Failure, RepositorySearch>> searchRepositories(
      SearchParams params) async {
    final result = await _restService.searchRepositories(
        params.query, params.page, params.perPage);
    if (result.isSuccessful) {
      return right(result.body ?? const RepositorySearch());
    } else {
      return left(result.error.toServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserSearch>> searchUsers(SearchParams params) async {
    final result = await _restService.searchUsers(
        params.query, params.page, params.perPage);
    if (result.isSuccessful) {
      return right(result.body ?? const UserSearch());
    } else {
      return left(result.error.toServerFailure());
    }
  }
}

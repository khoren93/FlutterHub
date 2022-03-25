import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/repositories/data/datasources/restapi/rest_service.dart';

import '../../../../core/error/failure.dart';
import '../../domain/entities/models.dart';
import '../../domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl(this._restService);
  final SearchService _restService;

  @override
  Future<Either<Failure, RepositorySearch>> searchRepositories(
      String query, int page) async {
    final result = await _restService.searchRepositories(query, page);
    if (result.isSuccessful) {
      return right(result.body ?? const RepositorySearch());
    } else {
      return left(result.error.toServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserSearch>> searchUsers(
      String query, int page) async {
    final result = await _restService.searchUsers(query, page);
    if (result.isSuccessful) {
      return right(result.body ?? const UserSearch());
    } else {
      return left(result.error.toServerFailure());
    }
  }
}

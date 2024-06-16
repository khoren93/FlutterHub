import 'package:flutterhub/features/core/data/datasources/restapi/rest_service.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/repositories/domain/repositories/repositories_repository.dart';

class RepositoriesRepositoryImpl implements RepositoriesRepository {
  RepositoriesRepositoryImpl(this._usersService, this._reposService);
  final UsersService _usersService;
  final ReposService _reposService;

  @override
  Future<Either<Failure, List<Repository>>> userRepositories(
      UserRepositoriesParams params) async {
    final result = await _usersService.repositories(
      params.username,
      params.page,
      params.perPage,
    );
    if (result.isSuccessful) {
      return right(result.body ?? []);
    } else {
      return left(result.error.toServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Repository>>> userStarredRepositories(
      UserRepositoriesParams params) async {
    final result = await _usersService.starredRepositories(
      params.username,
      params.page,
      params.perPage,
    );
    if (result.isSuccessful) {
      return right(result.body ?? []);
    } else {
      return left(result.error.toServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Repository>>> userWatchingRepositories(
      UserRepositoriesParams params) async {
    final result = await _usersService.watchingRepositories(
      params.username,
      params.page,
      params.perPage,
    );
    if (result.isSuccessful) {
      return right(result.body ?? []);
    } else {
      return left(result.error.toServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<Repository>>> forks(
      RepositoriesParams params) async {
    final result = await _reposService.forks(
      params.fullname,
      params.page,
      params.perPage,
    );
    if (result.isSuccessful) {
      return right(result.body ?? []);
    } else {
      return left(result.error.toServerFailure());
    }
  }
}

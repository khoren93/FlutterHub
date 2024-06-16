import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/repositories/domain/repositories/repositories_repository.dart';

import '../../../core/data/models/failure.dart';
import '../../../core/domain/usecases/usecase.dart';

class UserRepositoriesUsecase
    extends UseCase<List<Repository>, UserRepositoriesParams> {
  UserRepositoriesUsecase(this._repository);
  final RepositoriesRepository _repository;

  @override
  Future<Either<Failure, List<Repository>>> call(
      UserRepositoriesParams params) async {
    try {
      return _repository.userRepositories(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

class UserStarredRepositoriesUsecase
    extends UseCase<List<Repository>, UserRepositoriesParams> {
  UserStarredRepositoriesUsecase(this._repository);
  final RepositoriesRepository _repository;

  @override
  Future<Either<Failure, List<Repository>>> call(
      UserRepositoriesParams params) async {
    try {
      return _repository.userStarredRepositories(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

class UserWatchingRepositoriesUsecase
    extends UseCase<List<Repository>, UserRepositoriesParams> {
  UserWatchingRepositoriesUsecase(this._repository);
  final RepositoriesRepository _repository;

  @override
  Future<Either<Failure, List<Repository>>> call(
      UserRepositoriesParams params) async {
    try {
      return _repository.userWatchingRepositories(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

class ForkRepositoriesUsecase
    extends UseCase<List<Repository>, RepositoriesParams> {
  ForkRepositoriesUsecase(this._repository);
  final RepositoriesRepository _repository;

  @override
  Future<Either<Failure, List<Repository>>> call(
      RepositoriesParams params) async {
    try {
      return _repository.forks(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

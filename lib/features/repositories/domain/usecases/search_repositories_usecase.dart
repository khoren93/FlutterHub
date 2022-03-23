import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/features/repositories/domain/repositories/repository_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';

class SearchRepositoriesParams {
  SearchRepositoriesParams(this.query, this.page);
  final String query;
  final int page;
}

class SearchRepositoriesUsecase
    extends UseCase<RepositorySearch, SearchRepositoriesParams> {
  SearchRepositoriesUsecase(this._repository);
  final RepositoryRepository _repository;

  @override
  Future<Either<Failure, RepositorySearch>> call(
      SearchRepositoriesParams params) async {
    try {
      return right(
        await _repository.searchRepositories(params.query, params.page),
      );
    } catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure());
    }
  }
}

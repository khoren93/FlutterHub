import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';
import '../repositories/search_repository.dart';

class SearchRepositoriesParams {
  SearchRepositoriesParams(this.query, this.page);
  final String query;
  final int page;
}

class SearchRepositoriesUsecase
    extends UseCase<RepositorySearch, SearchRepositoriesParams> {
  SearchRepositoriesUsecase(this._repository);
  final SearchRepository _repository;

  @override
  Future<Either<Failure, RepositorySearch>> call(
      SearchRepositoriesParams params) async {
    try {
      final result =
          await _repository.searchRepositories(params.query, params.page);
      if (result != null) {
        return right(result);
      } else {
        return left(ServerFailure());
      }
    } catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure());
    }
  }
}

import 'package:dartz/dartz.dart';

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
      return _repository.searchRepositories(params.query, params.page);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

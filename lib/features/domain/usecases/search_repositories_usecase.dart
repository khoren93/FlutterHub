import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';
import '../repositories/search_repository.dart';

class SearchRepositoriesUsecase
    extends UseCase<RepositorySearch, SearchParams> {
  SearchRepositoriesUsecase(this._repository);
  final SearchRepository _repository;

  @override
  Future<Either<Failure, RepositorySearch>> call(SearchParams params) async {
    try {
      return _repository.searchRepositories(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

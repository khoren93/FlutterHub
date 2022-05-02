import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/search/domain/repositories/search_repository.dart';

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

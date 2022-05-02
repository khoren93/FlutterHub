import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/search/domain/repositories/search_repository.dart';

class SearchUsersUsecase extends UseCase<UserSearch, SearchParams> {
  SearchUsersUsecase(this._repository);
  final SearchRepository _repository;

  @override
  Future<Either<Failure, UserSearch>> call(SearchParams params) async {
    try {
      return _repository.searchUsers(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

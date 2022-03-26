import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';
import '../repositories/search_repository.dart';

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

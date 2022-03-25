import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';
import '../repositories/search_repository.dart';

class SearchUsersParams {
  SearchUsersParams(this.query, this.page);
  final String query;
  final int page;
}

class SearchUsersUsecase extends UseCase<UserSearch, SearchUsersParams> {
  SearchUsersUsecase(this._repository);
  final SearchRepository _repository;

  @override
  Future<Either<Failure, UserSearch>> call(SearchUsersParams params) async {
    try {
      return _repository.searchUsers(params.query, params.page);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

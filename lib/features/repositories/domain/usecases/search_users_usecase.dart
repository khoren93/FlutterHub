import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';
import '../repositories/user_repository.dart';

class SearchUsersParams {
  SearchUsersParams(this.query, this.page);
  final String query;
  final int page;
}

class SearchUsersUsecase extends UseCase<UserSearch, SearchUsersParams> {
  SearchUsersUsecase(this._repository);
  final UserRepository _repository;

  @override
  Future<Either<Failure, UserSearch>> call(SearchUsersParams params) async {
    try {
      return right(
        await _repository.searchUsers(params.query, params.page),
      );
    } catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure());
    }
  }
}

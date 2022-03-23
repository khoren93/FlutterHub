import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

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
      final result = await _repository.searchUsers(params.query, params.page);
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

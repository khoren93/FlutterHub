import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../repositories/repos_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';

class GetRepositoryParams {
  GetRepositoryParams(this.fullname);
  final String fullname;
}

class GetRepositoryUsecase extends UseCase<Repository, GetRepositoryParams> {
  GetRepositoryUsecase(this._repository);
  final ReposRepository _repository;

  @override
  Future<Either<Failure, Repository>> call(GetRepositoryParams params) async {
    try {
      final result = await _repository.repository(params.fullname);
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

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../repositories/repository_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';

class GetRepositoryParams {
  GetRepositoryParams(this.fullname, this.qualifiedName);
  final String fullname;
  final String qualifiedName;
}

class GetRepositoryUsecase extends UseCase<Repository, GetRepositoryParams> {
  GetRepositoryUsecase(this._repository);
  final RepositoryRepository _repository;

  @override
  Future<Either<Failure, Repository>> call(GetRepositoryParams params) async {
    try {
      return right(
        await _repository.repository(params.fullname, params.qualifiedName),
      );
    } catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure());
    }
  }
}

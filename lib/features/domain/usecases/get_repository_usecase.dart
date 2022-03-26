import 'package:dartz/dartz.dart';
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
      return _repository.repository(params.fullname);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

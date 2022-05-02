import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/repository/domain/repositories/repos_repository.dart';

class GetRepositoryUsecase extends UseCase<Repository, GetRepositoryParams> {
  GetRepositoryUsecase(this._repository);
  final ReposRepository _repository;

  @override
  Future<Either<Failure, Repository>> call(GetRepositoryParams params) async {
    try {
      return _repository.repository(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

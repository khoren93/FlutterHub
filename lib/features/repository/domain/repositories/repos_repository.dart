import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';

abstract class ReposRepository {
  Future<Either<Failure, Repository>> repository(
    GetRepositoryParams params,
  );
}

class GetRepositoryParams {
  GetRepositoryParams(this.fullname);
  final String fullname;
}

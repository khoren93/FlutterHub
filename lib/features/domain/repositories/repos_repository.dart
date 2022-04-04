import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/models.dart';

abstract class ReposRepository {
  Future<Either<Failure, Repository>> repository(
    GetRepositoryParams params,
  );
}

class GetRepositoryParams {
  GetRepositoryParams(this.fullname);
  final String fullname;
}

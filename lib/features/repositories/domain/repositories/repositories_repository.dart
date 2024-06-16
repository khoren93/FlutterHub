import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';

import '../../../core/data/models/failure.dart';

abstract class RepositoriesRepository {
  Future<Either<Failure, List<Repository>>> userRepositories(
    UserRepositoriesParams params,
  );

  Future<Either<Failure, List<Repository>>> userStarredRepositories(
    UserRepositoriesParams params,
  );

  Future<Either<Failure, List<Repository>>> userWatchingRepositories(
    UserRepositoriesParams params,
  );

  Future<Either<Failure, List<Repository>>> forks(
    RepositoriesParams params,
  );
}

class UserRepositoriesParams {
  UserRepositoriesParams(this.username, this.page, this.perPage);
  final String username;
  final int page;
  final int perPage;
}

class RepositoriesParams {
  RepositoriesParams(this.fullname, this.page, this.perPage);
  final String fullname;
  final int page;
  final int perPage;
}

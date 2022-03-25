import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/models.dart';

abstract class SearchRepository {
  Future<Either<Failure, RepositorySearch>> searchRepositories(
      String query, int page);

  Future<Either<Failure, UserSearch>> searchUsers(String query, int page);
}

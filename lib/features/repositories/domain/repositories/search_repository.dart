import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/models.dart';

abstract class SearchRepository {
  Future<Either<Failure, RepositorySearch>> searchRepositories(
    SearchParams params,
  );

  Future<Either<Failure, UserSearch>> searchUsers(
    SearchParams params,
  );
}

class SearchParams {
  SearchParams(this.query, this.page, this.perPage);
  final String query;
  final int page;
  final int perPage;
}

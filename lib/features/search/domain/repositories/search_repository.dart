import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';

abstract class SearchRepository {
  Future<Either<Failure, RepositorySearch>> searchRepositories(
    SearchParams params,
  );

  Future<Either<Failure, UserSearch>> searchUsers(
    SearchParams params,
  );
}

class SearchParams {
  SearchParams(this.query, this.order, this.sort, this.page, this.perPage);
  final String query;
  final String order;
  final String sort;
  final int page;
  final int perPage;
}

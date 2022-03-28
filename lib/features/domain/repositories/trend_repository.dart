import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/models.dart';

abstract class TrendRepository {
  Future<Either<Failure, List<TrendingRepository>>> trendingRepositories(
    TrendingParams params,
  );

  Future<Either<Failure, List<TrendingUser>>> trendingUsers(
    TrendingParams params,
  );

  Future<Either<Failure, List<RepositoryLanguage>>> languages();
}

class TrendingParams {
  TrendingParams(this.language, this.since);
  final String language;
  final String since;
}

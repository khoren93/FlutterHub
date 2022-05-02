import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/data/datasources/restapi/rest_service.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/trending/domain/repositories/trend_repository.dart';

class TrendRepositoryImpl implements TrendRepository {
  TrendRepositoryImpl(this._restService);
  final TrendingService _restService;

  @override
  Future<Either<Failure, List<TrendingRepository>>> trendingRepositories(
      TrendingParams params) async {
    final result =
        await _restService.trendingRepositories(params.language, params.since);
    if (result.isSuccessful) {
      return right(result.body ?? const []);
    } else {
      return left(result.error.toServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<TrendingUser>>> trendingUsers(
      TrendingParams params) async {
    final result =
        await _restService.trendingDevelopers(params.language, params.since);
    if (result.isSuccessful) {
      return right(result.body ?? const []);
    } else {
      return left(result.error.toServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<RepositoryLanguage>>> languages() async {
    final result = await _restService.languages();
    if (result.isSuccessful) {
      return right(result.body ?? const []);
    } else {
      return left(result.error.toServerFailure());
    }
  }
}

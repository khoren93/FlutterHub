import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/trending/domain/repositories/trend_repository.dart';

class TrendingRepositoriesUsecase
    extends UseCase<List<TrendingRepository>, TrendingParams> {
  TrendingRepositoriesUsecase(this._repository);
  final TrendRepository _repository;

  @override
  Future<Either<Failure, List<TrendingRepository>>> call(
      TrendingParams params) async {
    try {
      return _repository.trendingRepositories(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

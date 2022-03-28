import 'package:dartz/dartz.dart';
import '../entities/models.dart';
import '../repositories/trend_repository.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecase.dart';

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

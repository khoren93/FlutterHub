import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/trending/domain/repositories/trend_repository.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';

class TrendingUsersUsecase extends UseCase<List<TrendingUser>, TrendingParams> {
  TrendingUsersUsecase(this._repository);
  final TrendRepository _repository;

  @override
  Future<Either<Failure, List<TrendingUser>>> call(
      TrendingParams params) async {
    try {
      return _repository.trendingUsers(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

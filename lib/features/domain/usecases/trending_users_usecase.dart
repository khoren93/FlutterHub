import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/domain/repositories/trend_repository.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecase.dart';

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

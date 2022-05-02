import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/trending/domain/repositories/trend_repository.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';

class LanguagesUsecase extends UseCase<List<RepositoryLanguage>, void> {
  LanguagesUsecase(this._repository);
  final TrendRepository _repository;

  @override
  Future<Either<Failure, List<RepositoryLanguage>>> call(params) async {
    try {
      return _repository.languages();
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

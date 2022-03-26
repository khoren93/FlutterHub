import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/domain/entities/models.dart';
import 'package:flutterhub/features/domain/repositories/trend_repository.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecase.dart';

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

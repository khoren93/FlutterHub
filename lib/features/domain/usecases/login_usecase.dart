import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/domain/repositories/login_repository.dart';

import '../../../core/error/failure.dart';
import '../../../core/usecases/usecase.dart';
import '../entities/models.dart';

class CreateAccessTokenUsecase extends UseCase<Token, AccessTokenParams> {
  CreateAccessTokenUsecase(this._repository);
  final LoginRepository _repository;

  @override
  Future<Either<Failure, Token>> call(AccessTokenParams params) async {
    try {
      return _repository.createAccessToken(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

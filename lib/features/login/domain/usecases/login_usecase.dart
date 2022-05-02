import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/login/domain/repositories/login_repository.dart';

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

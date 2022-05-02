import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import '../repositories/user_repository.dart';

class GetAuthenticatedUserUsecase
    extends UseCase<User, AuthenticatedUserParams> {
  GetAuthenticatedUserUsecase(this._repository);
  final UserRepository _repository;

  @override
  Future<Either<Failure, User>> call(AuthenticatedUserParams params) async {
    try {
      return _repository.user(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

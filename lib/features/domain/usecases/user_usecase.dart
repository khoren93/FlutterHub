import 'package:dartz/dartz.dart';
import '../repositories/user_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';

class GetAuthenticatedUserUsecase extends UseCase<User, AuthenticatedUserParams> {
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

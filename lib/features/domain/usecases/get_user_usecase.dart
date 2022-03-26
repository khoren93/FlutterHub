import 'package:dartz/dartz.dart';
import '../repositories/users_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/models.dart';

class GetUserParams {
  GetUserParams(this.owner);
  final String owner;
}

class GetUserUsecase extends UseCase<User, GetUserParams> {
  GetUserUsecase(this._repository);
  final UsersRepository _repository;

  @override
  Future<Either<Failure, User>> call(GetUserParams params) async {
    try {
      return _repository.user(params.owner);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

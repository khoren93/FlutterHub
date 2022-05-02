import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/usecases/usecase.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/user/domain/repositories/users_repository.dart';

class GetUserUsecase extends UseCase<User, UserParams> {
  GetUserUsecase(this._repository);
  final UsersRepository _repository;

  @override
  Future<Either<Failure, User>> call(UserParams params) async {
    try {
      return _repository.user(params);
    } catch (e) {
      return Left(ServerFailure.unknown());
    }
  }
}

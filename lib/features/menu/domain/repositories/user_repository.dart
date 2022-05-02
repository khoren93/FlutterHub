import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> user(
    AuthenticatedUserParams params,
  );
}

class AuthenticatedUserParams {
  AuthenticatedUserParams();
}

import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/models.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> user(
    AuthenticatedUserParams params,
  );
}

class AuthenticatedUserParams {
  AuthenticatedUserParams();
}

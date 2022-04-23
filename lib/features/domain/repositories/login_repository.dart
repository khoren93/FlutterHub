import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/models.dart';

abstract class LoginRepository {
  Future<Either<Failure, Token>> createAccessToken(
    AccessTokenParams params,
  );
}

class AccessTokenParams {
  AccessTokenParams(
    this.clientId,
    this.clientSecret,
    this.code,
    this.redirectUri,
    this.state,
  );
  final String clientId;
  final String clientSecret;
  final String code;
  final String redirectUri;
  final String state;
}

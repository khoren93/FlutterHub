import 'package:dartz/dartz.dart';
import 'package:flutterhub/features/core/data/models/failure.dart';
import 'package:flutterhub/features/core/data/datasources/restapi/rest_service.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this._restService);
  final LoginService _restService;

  @override
  Future<Either<Failure, Token>> createAccessToken(
      AccessTokenParams params) async {
    final result = await _restService.createAccessToken(
      params.clientId,
      params.clientSecret,
      params.code,
      params.redirectUri,
      params.state,
    );
    if (result.isSuccessful) {
      return right(
          result.body?.copyWith(type: TokenType.oauth) ?? const Token());
    } else {
      return left(result.error.toServerFailure());
    }
  }
}

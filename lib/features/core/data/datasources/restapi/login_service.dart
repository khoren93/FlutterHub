part of 'rest_service.dart';

@ChopperApi(baseUrl: 'https://github.com/login')
abstract class LoginService extends ChopperService {
  static LoginService create([ChopperClient? client]) => _$LoginService(client);

  @Post(
    path: '/oauth/access_token',
    headers: {'Accept': 'application/json'},
    optionalBody: true,
  )
  Future<Response<Token>> createAccessToken(
    @Query('client_id') String clientId,
    @Query('client_secret') String clientSecret,
    @Query() String code,
    @Query('redirect_uri') String redirectUri,
    @Query() String state,
  );
}

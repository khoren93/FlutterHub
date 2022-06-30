// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$LoginService extends LoginService {
  _$LoginService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = LoginService;

  @override
  Future<Response<Token>> createAccessToken(String clientId,
      String clientSecret, String code, String redirectUri, String state) {
    final $url = 'https://github.com/login/oauth/access_token';
    final $params = <String, dynamic>{
      'client_id': clientId,
      'client_secret': clientSecret,
      'code': code,
      'redirect_uri': redirectUri,
      'state': state
    };
    final $headers = {
      'Accept': 'application/json',
    };

    final $request = Request('POST', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<Token, Token>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ReposService extends ReposService {
  _$ReposService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ReposService;

  @override
  Future<Response<Repository>> repository(String fullname) {
    final $url = '/repos/${fullname}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<Repository, Repository>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SearchService extends SearchService {
  _$SearchService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SearchService;

  @override
  Future<Response<RepositorySearch>> searchRepositories(
      String query, String order, String sort, int page, int perPage) {
    final $url = '/search/repositories';
    final $params = <String, dynamic>{
      'q': query,
      'order': order,
      'sort': sort,
      'page': page,
      'per_page': perPage
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RepositorySearch, RepositorySearch>($request);
  }

  @override
  Future<Response<UserSearch>> searchUsers(
      String query, String order, String sort, int page, int perPage) {
    final $url = '/search/users';
    final $params = <String, dynamic>{
      'q': query,
      'order': order,
      'sort': sort,
      'page': page,
      'per_page': perPage
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<UserSearch, UserSearch>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$TrendingService extends TrendingService {
  _$TrendingService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TrendingService;

  @override
  Future<Response<List<TrendingRepository>>> trendingRepositories(
      String language, String since) {
    final $url = '/repositories';
    final $params = <String, dynamic>{'language': language, 'since': since};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<TrendingRepository>, TrendingRepository>($request);
  }

  @override
  Future<Response<List<TrendingUser>>> trendingDevelopers(
      String language, String since) {
    final $url = '/developers';
    final $params = <String, dynamic>{'language': language, 'since': since};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<TrendingUser>, TrendingUser>($request);
  }

  @override
  Future<Response<List<RepositoryLanguage>>> languages() {
    final $url = '/languages';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<RepositoryLanguage>, RepositoryLanguage>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$UserService extends UserService {
  _$UserService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UserService;

  @override
  Future<Response<User>> user() {
    final $url = '/user';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<User, User>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$UsersService extends UsersService {
  _$UsersService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = UsersService;

  @override
  Future<Response<User>> user(String owner) {
    final $url = '/users/${owner}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<User, User>($request);
  }
}

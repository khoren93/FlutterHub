// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

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
      String query, int page) {
    final $url = '/search/repositories';
    final $params = <String, dynamic>{'q': query, 'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<RepositorySearch, RepositorySearch>($request);
  }

  @override
  Future<Response<UserSearch>> searchUsers(String query, int page) {
    final $url = '/search/users';
    final $params = <String, dynamic>{'q': query, 'page': page};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<UserSearch, UserSearch>($request);
  }
}

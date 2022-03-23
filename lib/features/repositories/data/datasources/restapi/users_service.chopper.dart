// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

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

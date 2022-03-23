// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

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

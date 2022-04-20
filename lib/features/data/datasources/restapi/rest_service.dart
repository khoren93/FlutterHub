import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterhub/configs/app_store.dart';
import '../../../domain/entities/models.dart';
import '../../models/rate_limit.dart';

part 'rest_service.chopper.dart';
part 'trending_service.dart';
part 'repos_service.dart';
part 'search_service.dart';
part 'user_service.dart';
part 'users_service.dart';

final githubClient = ChopperClient(
  baseUrl: 'https://api.github.com',
  authenticator: AppAuthenticator(),
  converter: JsonSerializableConverter(
    CustomJsonDecoder({
      RepositorySearch: RepositorySearch.fromJson,
      UserSearch: UserSearch.fromJson,
      Repository: Repository.fromJson,
      User: User.fromJson,
    }),
  ),
  errorConverter: const JsonConverter(),
  services: [
    SearchService.create(),
    ReposService.create(),
    UserService.create(),
    UsersService.create(),
  ],
  interceptors: [
    AuthInterceptor(),
    HttpLoggingInterceptor(),
    RateLimitInterceptor(),
  ],
);

final trendingClient = ChopperClient(
  baseUrl: 'https://gtrend.yapie.me',
  converter: JsonSerializableConverter(
    CustomJsonDecoder({
      TrendingRepository: TrendingRepository.fromJson,
      TrendingUser: TrendingUser.fromJson,
      RepositoryLanguage: RepositoryLanguage.fromJson,
    }),
  ),
  errorConverter: const JsonConverter(),
  services: [
    TrendingService.create(),
  ],
  interceptors: [
    HttpLoggingInterceptor(),
  ],
);

/// This class is used to authenticate the user.
/// It is used by the [AuthInterceptor] to add the token to the request.
class AuthInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    Token? token = appStore.token;
    if (token?.token != null) {
      var headers = Map<String, String>.from(request.headers);
      headers['Authorization'] = token?.token ?? '';
      return request.copyWith(headers: headers);
    }
    return request;
  }
}

class AppAuthenticator extends Authenticator {
  @override
  FutureOr<Request?> authenticate(Request request, Response response,
      [Request? originalRequest]) {
    if (response.statusCode == 401) {
      debugPrint('Token is invalid, removing it from the store');
      appStore.deleteToken();
    }
    return null;
  }
}

/// This class is used to handle the rate limit.
class RateLimitInterceptor extends ResponseInterceptor {
  @override
  Future<Response> onResponse(Response response) async {
    final headers = response.headers;
    appStore.rateLimit = RateLimit(
      limit: int.tryParse(headers['x-ratelimit-limit'] ?? '') ?? 0,
      remaining: int.tryParse(headers['x-ratelimit-remaining'] ?? '') ?? 0,
      reset: int.tryParse(headers['x-ratelimit-reset'] ?? '') ?? 0,
    );
    return response;
  }
}

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

/// Custom converter to convert the response body to a Models
class JsonSerializableConverter extends JsonConverter {
  const JsonSerializableConverter(this.jsonDecoder);
  final CustomJsonDecoder jsonDecoder;

  @override
  Response<ResultType> convertResponse<ResultType, Item>(Response response) {
    if (response.bodyString.isEmpty) {
      return Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

class CustomJsonDecoder {
  CustomJsonDecoder(this.factories);
  final Map<Type, JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }
    if (entity is T) {
      return entity;
    }
    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }
    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

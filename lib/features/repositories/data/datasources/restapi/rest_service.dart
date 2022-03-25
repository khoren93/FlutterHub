import 'package:chopper/chopper.dart';
import 'package:flutterhub/features/repositories/domain/entities/models.dart';

part 'rest_service.chopper.dart';
part 'repos_service.dart';
part 'search_service.dart';
part 'users_service.dart';

final chopper = ChopperClient(
  baseUrl: 'https://api.github.com',
  converter: JsonSerializableConverter(),
  errorConverter: const JsonConverter(),
  services: [
    SearchService.create(),
    ReposService.create(),
    UsersService.create(),
  ],
  interceptors: [
    HttpLoggingInterceptor(),
  ],
);

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);
final jsonDecoder = CustomJsonDecoder(apiDecoderMappings);
final Map<Type, Object Function(Map<String, dynamic>)> apiDecoderMappings = {
  RepositorySearch: RepositorySearch.fromJson,
  UserSearch: UserSearch.fromJson,
  Repository: Repository.fromJson,
  User: User.fromJson,
};

/// Custom converter to convert the response body to a Models
class JsonSerializableConverter extends JsonConverter {
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

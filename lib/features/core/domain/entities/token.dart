part of 'models.dart';

enum TokenType { oauth, personal, basic }

@Freezed()
class Token with _$Token {
  const Token._();
  const factory Token({
    TokenType? type,
    String? basicToken,
    String? personalToken,
    String? accessToken,
    String? tokenType,
    String? scope,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  String toJsonString() => jsonEncode(toJson());

  String? get token {
    switch (type) {
      case TokenType.oauth:
        return 'token $accessToken';
      case TokenType.personal:
        return 'token $personalToken';
      case TokenType.basic:
        return 'Basic $basicToken';
      default:
        return null;
    }
  }

  bool get isValid {
    switch (type) {
      case TokenType.oauth:
        return accessToken != null;
      case TokenType.personal:
        return personalToken != null;
      case TokenType.basic:
        return basicToken != null;
      default:
        return false;
    }
  }
}

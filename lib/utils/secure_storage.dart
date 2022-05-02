import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';

class SecureStorage {
  static final SecureStorage instance =
      SecureStorage._(const FlutterSecureStorage());

  SecureStorage._(this._storage);

  final FlutterSecureStorage _storage;
  static const _tokenKey = 'TOKEN';

  Future<void> saveToken(Token token) async {
    try {
      await _storage.write(key: _tokenKey, value: token.toJsonString());
    } catch (e) {
      debugPrint(e.toString());
      return;
    }
  }

  Future<bool> hasToken() async {
    var value = await _storage.read(key: _tokenKey);
    return value != null;
  }

  Future<void> deleteToken() async {
    return _storage.delete(key: _tokenKey);
  }

  Future<Token?> getToken() async {
    try {
      var value = await _storage.read(key: _tokenKey);
      if (value == null) return null;
      return Token.fromJson(jsonDecode(value));
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<void> deleteAll() async {
    return _storage.deleteAll();
  }
}

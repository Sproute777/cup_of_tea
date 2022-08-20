import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SecureStorage {
  SecureStorage._privateConstructor();

  static final SecureStorage _instance = SecureStorage._privateConstructor();

  factory SecureStorage() {
    return _instance;
  }

  final _storage = const FlutterSecureStorage();

  static const _tokenKey = 'TOKEN';
  static const _emailKey = 'EMAIL';

  Future<void> persistToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  Future<bool> hasToken() async {
    var value = await _storage.read(key: _tokenKey);
    return value != null;
  }

  Future<bool> hasEmail() async {
    var value = await _storage.read(key: _emailKey);
    return value != null;
  }

  Future<void> deleteToken() async {
    return _storage.delete(key: _tokenKey);
  }

  Future<void> deleteEmail() async {
    return _storage.delete(key: _emailKey);
  }

  Future<String> getEmail() async {
    return await _storage.read(key: _emailKey) ?? '';
  }

  Future<String> getToken() async {
    return await _storage.read(key: _tokenKey) ?? '';
  }

  Future<void> deleteAll() async {
    return _storage.deleteAll();
  }
}

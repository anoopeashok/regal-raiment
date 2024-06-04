

import '../data_sources/secure_data_source.dart';

class AuthenticationRepository {
  final _localSecureStorage = SecureDataSource();
  final _tokenKey = 'token_key';

  Future<void> saveUserToken(String token) async {
    await _localSecureStorage.writeData(key: _tokenKey, data: token);
  }

  Future<String?> getUserToken() async {
    final token = await _localSecureStorage.getData(key: _tokenKey);
    return token;
  }

  Future<void> clearToken() async {
    await _localSecureStorage.delete(key: _tokenKey);
  }
}

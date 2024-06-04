import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../domain/interface/local_data_source_interface.dart';

class SecureDataSource extends ILocalDataSource {

  final _storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ));

  @override
  Future<void> delete({required String key}) async {
    await _storage.delete(key: key);
  }

  @override
  Future<void> deleteAll() async {
    await _storage.deleteAll();
  }

  @override
  Future<dynamic> getAllData() async {
    return await _storage.readAll();
  }

  @override
  Future<dynamic> getData({required String key}) async {
    final data = await _storage.read(key: key);
    return data != null ? jsonDecode(data) : null;
  }

  @override
  Future<void> writeData({required String key, required dynamic data}) async {
    await _storage.write(key: key, value: jsonEncode(data));
  }
}

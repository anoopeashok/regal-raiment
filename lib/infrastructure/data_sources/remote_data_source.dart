import 'package:dio/dio.dart';

import '../../../../shared/exceptions.dart';
import '../../domain/interface/remote_data_source_interface.dart';

class RemoteDataSource extends IRemoteDataSource {
  final _dio = Dio();
  final _baseurl = 'http://10.0.2.2:3000/api/v1';

  @override
  Future<Map> delete({required String path}) async {
    try {
      final response = await _dio.delete(_baseurl + path);
      if (response.statusCode == 200) {
        return response.data;
      } else if (response.statusCode == 400) {
        throw BadRequestException(response.data['msg']);
      } else {
        throw UnknownException(response.data['msg']);
      }
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map<String, dynamic>> get({required String path}) async {
    try {
      final response = await _dio.get(_baseurl + path);
      print(response);

      if (response.statusCode == 200) {
        return response.data;
      } else if (response.statusCode == 400) {
        throw BadRequestException(response.data['msg']);
      } else {
        throw UnknownException(response.data['msg']);
      }
    } on DioException catch (e) {
      print(e);
      rethrow;
    }
  }

  @override
  Future<Map> patch({required String path, Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.patch(_baseurl + path, data: data);
      if (response.statusCode == 200) {
        return response.data;
      } else if (response.statusCode == 400) {
        throw BadRequestException(response.data['msg']);
      } else {
        throw UnknownException(response.data['msg']);
      }
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<Map> post({required String path, Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(_baseurl + path, data: data);
      if (response.statusCode == 200) {
        return response.data;
      } else if (response.statusCode == 400) {
        throw BadRequestException(response.data['msg']);
      } else {
        throw UnknownException(response.data['msg']);
      }
    } on DioException catch (e) {
      rethrow;
    }
  }
}

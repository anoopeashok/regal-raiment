abstract class IRemoteDataSource {
  Future<Map> post({required String path, Map<String, dynamic>? data});
  Future<Map> get({required String path});
  Future<Map> patch({required String path, Map<String, dynamic>? data});
  Future<Map> delete({required String path});
}

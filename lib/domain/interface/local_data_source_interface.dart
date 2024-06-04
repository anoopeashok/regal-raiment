abstract class ILocalDataSource {
  Future<dynamic> getData({required String key});
  Future<void> writeData({required String key,required dynamic data});
  Future<dynamic> getAllData();
  Future<void> delete({required String key});
  Future<void> deleteAll();
}

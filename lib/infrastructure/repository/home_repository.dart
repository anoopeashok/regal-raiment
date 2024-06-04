import 'package:regal_raiment/infrastructure/data_sources/remote_data_source.dart';
import 'package:regal_raiment/infrastructure/models/home_model.dart';

class HomeRepository {
  final RemoteDataSource _remoteDataSource = RemoteDataSource();
  final String homePath = '/home';
  Future<HomeModel> getHome() async {
    var data = await _remoteDataSource.get(path: homePath);
    print(data);
    return HomeModel.fromJson(data);
  }
}

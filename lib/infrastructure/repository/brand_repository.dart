import 'package:regal_raiment/infrastructure/data_sources/remote_data_source.dart';
import 'package:regal_raiment/infrastructure/models/brand_model.dart';

class BrandRepository {
  RemoteDataSource _remoteDataSource = RemoteDataSource();
  String _brandPath = '/brand/all';
  Future<List<BrandModel>> getAllBrand() async {
    final data = await _remoteDataSource.get(path: _brandPath);
    return List<BrandModel>.from(data['brands'].map((e) => BrandModel.fromJson(e)));
  }
}

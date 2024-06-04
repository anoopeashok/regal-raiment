import 'package:regal_raiment/infrastructure/models/brand_model.dart';
import 'package:regal_raiment/infrastructure/repository/brand_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part '../../generated/presentation/brand/brand_controller.g.dart';
@riverpod
Future<List<BrandModel>> getAllBrands(GetAllBrandsRef ref) async {
  return BrandRepository().getAllBrand();
}

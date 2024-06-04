import 'package:freezed_annotation/freezed_annotation.dart';
part '../../generated/infrastructure/models/brand_model.freezed.dart';
part '../../generated/infrastructure/models/brand_model.g.dart';

@freezed
class BrandModel with _$BrandModel {
  const factory BrandModel(
      {required String name,
      required String description,
      required int foundedYear,
      required String logo}) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}

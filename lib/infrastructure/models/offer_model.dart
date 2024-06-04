import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/infrastructure/models/offer_model.freezed.dart';
part '../../generated/infrastructure/models/offer_model.g.dart';

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel(
      {required int offer,
      required String offerBanner,
      required String brand,
      required String category,
      required String retailUser}) = _OfferModel;
      
  factory OfferModel.fromJson(Map<String,dynamic> json) => _$OfferModelFromJson(json);

  

}

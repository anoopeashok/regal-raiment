import 'package:regal_raiment/infrastructure/models/offer_model.dart';

class HomeModel {
  List<OfferModel> offerModel;
  HomeModel({required  this.offerModel});
  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      HomeModel(offerModel: List.from(json['offers'].map((e)=> OfferModel.fromJson(e))));
}

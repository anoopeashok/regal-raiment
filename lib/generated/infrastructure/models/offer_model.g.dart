// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../infrastructure/models/offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferModel _$$_OfferModelFromJson(Map<String, dynamic> json) =>
    _$_OfferModel(
      offer: json['offer'] as int,
      offerBanner: json['offerBanner'] as String,
      brand: json['brand'] as String,
      category: json['category'] as String,
      retailUser: json['retailUser'] as String,
    );

Map<String, dynamic> _$$_OfferModelToJson(_$_OfferModel instance) =>
    <String, dynamic>{
      'offer': instance.offer,
      'offerBanner': instance.offerBanner,
      'brand': instance.brand,
      'category': instance.category,
      'retailUser': instance.retailUser,
    };

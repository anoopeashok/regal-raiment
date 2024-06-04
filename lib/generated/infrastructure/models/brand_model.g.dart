// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../infrastructure/models/brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandModel _$$_BrandModelFromJson(Map<String, dynamic> json) =>
    _$_BrandModel(
      name: json['name'] as String,
      description: json['description'] as String,
      foundedYear: json['foundedYear'] as int,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$_BrandModelToJson(_$_BrandModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'foundedYear': instance.foundedYear,
      'logo': instance.logo,
    };

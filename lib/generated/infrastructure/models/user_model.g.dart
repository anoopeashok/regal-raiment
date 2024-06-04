// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../infrastructure/models/user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String,
      phone: json['phone'] as String,
      status: json['status'] as String,
      pincode: json['pincode'] as String,
      address: json['address'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'status': instance.status,
      'pincode': instance.pincode,
      'address': instance.address,
      'role': instance.role,
    };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../infrastructure/models/offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return _OfferModel.fromJson(json);
}

/// @nodoc
mixin _$OfferModel {
  int get offer => throw _privateConstructorUsedError;
  String get offerBanner => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get retailUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferModelCopyWith<OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferModelCopyWith<$Res> {
  factory $OfferModelCopyWith(
          OfferModel value, $Res Function(OfferModel) then) =
      _$OfferModelCopyWithImpl<$Res, OfferModel>;
  @useResult
  $Res call(
      {int offer,
      String offerBanner,
      String brand,
      String category,
      String retailUser});
}

/// @nodoc
class _$OfferModelCopyWithImpl<$Res, $Val extends OfferModel>
    implements $OfferModelCopyWith<$Res> {
  _$OfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offer = null,
    Object? offerBanner = null,
    Object? brand = null,
    Object? category = null,
    Object? retailUser = null,
  }) {
    return _then(_value.copyWith(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as int,
      offerBanner: null == offerBanner
          ? _value.offerBanner
          : offerBanner // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      retailUser: null == retailUser
          ? _value.retailUser
          : retailUser // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferModelCopyWith<$Res>
    implements $OfferModelCopyWith<$Res> {
  factory _$$_OfferModelCopyWith(
          _$_OfferModel value, $Res Function(_$_OfferModel) then) =
      __$$_OfferModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offer,
      String offerBanner,
      String brand,
      String category,
      String retailUser});
}

/// @nodoc
class __$$_OfferModelCopyWithImpl<$Res>
    extends _$OfferModelCopyWithImpl<$Res, _$_OfferModel>
    implements _$$_OfferModelCopyWith<$Res> {
  __$$_OfferModelCopyWithImpl(
      _$_OfferModel _value, $Res Function(_$_OfferModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offer = null,
    Object? offerBanner = null,
    Object? brand = null,
    Object? category = null,
    Object? retailUser = null,
  }) {
    return _then(_$_OfferModel(
      offer: null == offer
          ? _value.offer
          : offer // ignore: cast_nullable_to_non_nullable
              as int,
      offerBanner: null == offerBanner
          ? _value.offerBanner
          : offerBanner // ignore: cast_nullable_to_non_nullable
              as String,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      retailUser: null == retailUser
          ? _value.retailUser
          : retailUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferModel implements _OfferModel {
  const _$_OfferModel(
      {required this.offer,
      required this.offerBanner,
      required this.brand,
      required this.category,
      required this.retailUser});

  factory _$_OfferModel.fromJson(Map<String, dynamic> json) =>
      _$$_OfferModelFromJson(json);

  @override
  final int offer;
  @override
  final String offerBanner;
  @override
  final String brand;
  @override
  final String category;
  @override
  final String retailUser;

  @override
  String toString() {
    return 'OfferModel(offer: $offer, offerBanner: $offerBanner, brand: $brand, category: $category, retailUser: $retailUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferModel &&
            (identical(other.offer, offer) || other.offer == offer) &&
            (identical(other.offerBanner, offerBanner) ||
                other.offerBanner == offerBanner) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.retailUser, retailUser) ||
                other.retailUser == retailUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, offer, offerBanner, brand, category, retailUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferModelCopyWith<_$_OfferModel> get copyWith =>
      __$$_OfferModelCopyWithImpl<_$_OfferModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferModelToJson(
      this,
    );
  }
}

abstract class _OfferModel implements OfferModel {
  const factory _OfferModel(
      {required final int offer,
      required final String offerBanner,
      required final String brand,
      required final String category,
      required final String retailUser}) = _$_OfferModel;

  factory _OfferModel.fromJson(Map<String, dynamic> json) =
      _$_OfferModel.fromJson;

  @override
  int get offer;
  @override
  String get offerBanner;
  @override
  String get brand;
  @override
  String get category;
  @override
  String get retailUser;
  @override
  @JsonKey(ignore: true)
  _$$_OfferModelCopyWith<_$_OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

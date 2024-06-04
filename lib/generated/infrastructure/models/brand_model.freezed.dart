// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../infrastructure/models/brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandModel _$BrandModelFromJson(Map<String, dynamic> json) {
  return _BrandModel.fromJson(json);
}

/// @nodoc
mixin _$BrandModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get foundedYear => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandModelCopyWith<BrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandModelCopyWith<$Res> {
  factory $BrandModelCopyWith(
          BrandModel value, $Res Function(BrandModel) then) =
      _$BrandModelCopyWithImpl<$Res, BrandModel>;
  @useResult
  $Res call({String name, String description, int foundedYear, String logo});
}

/// @nodoc
class _$BrandModelCopyWithImpl<$Res, $Val extends BrandModel>
    implements $BrandModelCopyWith<$Res> {
  _$BrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? foundedYear = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      foundedYear: null == foundedYear
          ? _value.foundedYear
          : foundedYear // ignore: cast_nullable_to_non_nullable
              as int,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandModelCopyWith<$Res>
    implements $BrandModelCopyWith<$Res> {
  factory _$$_BrandModelCopyWith(
          _$_BrandModel value, $Res Function(_$_BrandModel) then) =
      __$$_BrandModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description, int foundedYear, String logo});
}

/// @nodoc
class __$$_BrandModelCopyWithImpl<$Res>
    extends _$BrandModelCopyWithImpl<$Res, _$_BrandModel>
    implements _$$_BrandModelCopyWith<$Res> {
  __$$_BrandModelCopyWithImpl(
      _$_BrandModel _value, $Res Function(_$_BrandModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? foundedYear = null,
    Object? logo = null,
  }) {
    return _then(_$_BrandModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      foundedYear: null == foundedYear
          ? _value.foundedYear
          : foundedYear // ignore: cast_nullable_to_non_nullable
              as int,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandModel implements _BrandModel {
  const _$_BrandModel(
      {required this.name,
      required this.description,
      required this.foundedYear,
      required this.logo});

  factory _$_BrandModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandModelFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final int foundedYear;
  @override
  final String logo;

  @override
  String toString() {
    return 'BrandModel(name: $name, description: $description, foundedYear: $foundedYear, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.foundedYear, foundedYear) ||
                other.foundedYear == foundedYear) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, foundedYear, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandModelCopyWith<_$_BrandModel> get copyWith =>
      __$$_BrandModelCopyWithImpl<_$_BrandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandModelToJson(
      this,
    );
  }
}

abstract class _BrandModel implements BrandModel {
  const factory _BrandModel(
      {required final String name,
      required final String description,
      required final int foundedYear,
      required final String logo}) = _$_BrandModel;

  factory _BrandModel.fromJson(Map<String, dynamic> json) =
      _$_BrandModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  int get foundedYear;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$_BrandModelCopyWith<_$_BrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

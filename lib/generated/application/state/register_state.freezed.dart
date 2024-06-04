// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../application/state/register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() registerConfirmation,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? registerConfirmation,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? registerConfirmation,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateSuccess value) registerSuccess,
    required TResult Function(_RegisterStateConfirmationSuccess value)
        registerConfirmation,
    required TResult Function(_RegistrationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult? Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult? Function(_RegistrationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult Function(_RegistrationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RegistrationStateInitialCopyWith<$Res> {
  factory _$$_RegistrationStateInitialCopyWith(
          _$_RegistrationStateInitial value,
          $Res Function(_$_RegistrationStateInitial) then) =
      __$$_RegistrationStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegistrationStateInitialCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegistrationStateInitial>
    implements _$$_RegistrationStateInitialCopyWith<$Res> {
  __$$_RegistrationStateInitialCopyWithImpl(_$_RegistrationStateInitial _value,
      $Res Function(_$_RegistrationStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegistrationStateInitial implements _RegistrationStateInitial {
  const _$_RegistrationStateInitial();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() registerConfirmation,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? registerConfirmation,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? registerConfirmation,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateSuccess value) registerSuccess,
    required TResult Function(_RegisterStateConfirmationSuccess value)
        registerConfirmation,
    required TResult Function(_RegistrationStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult? Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult? Function(_RegistrationStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult Function(_RegistrationStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStateInitial implements RegistrationState {
  const factory _RegistrationStateInitial() = _$_RegistrationStateInitial;
}

/// @nodoc
abstract class _$$_RegistrationStateLoadingCopyWith<$Res> {
  factory _$$_RegistrationStateLoadingCopyWith(
          _$_RegistrationStateLoading value,
          $Res Function(_$_RegistrationStateLoading) then) =
      __$$_RegistrationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegistrationStateLoadingCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegistrationStateLoading>
    implements _$$_RegistrationStateLoadingCopyWith<$Res> {
  __$$_RegistrationStateLoadingCopyWithImpl(_$_RegistrationStateLoading _value,
      $Res Function(_$_RegistrationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegistrationStateLoading implements _RegistrationStateLoading {
  const _$_RegistrationStateLoading();

  @override
  String toString() {
    return 'RegistrationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() registerConfirmation,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? registerConfirmation,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? registerConfirmation,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateSuccess value) registerSuccess,
    required TResult Function(_RegisterStateConfirmationSuccess value)
        registerConfirmation,
    required TResult Function(_RegistrationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult? Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult? Function(_RegistrationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult Function(_RegistrationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStateLoading implements RegistrationState {
  const factory _RegistrationStateLoading() = _$_RegistrationStateLoading;
}

/// @nodoc
abstract class _$$_RegistrationStateSuccessCopyWith<$Res> {
  factory _$$_RegistrationStateSuccessCopyWith(
          _$_RegistrationStateSuccess value,
          $Res Function(_$_RegistrationStateSuccess) then) =
      __$$_RegistrationStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegistrationStateSuccessCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegistrationStateSuccess>
    implements _$$_RegistrationStateSuccessCopyWith<$Res> {
  __$$_RegistrationStateSuccessCopyWithImpl(_$_RegistrationStateSuccess _value,
      $Res Function(_$_RegistrationStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegistrationStateSuccess implements _RegistrationStateSuccess {
  const _$_RegistrationStateSuccess();

  @override
  String toString() {
    return 'RegistrationState.registerSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() registerConfirmation,
    required TResult Function(String error) error,
  }) {
    return registerSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? registerConfirmation,
    TResult? Function(String error)? error,
  }) {
    return registerSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? registerConfirmation,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateSuccess value) registerSuccess,
    required TResult Function(_RegisterStateConfirmationSuccess value)
        registerConfirmation,
    required TResult Function(_RegistrationStateError value) error,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult? Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult? Function(_RegistrationStateError value)? error,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult Function(_RegistrationStateError value)? error,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStateSuccess implements RegistrationState {
  const factory _RegistrationStateSuccess() = _$_RegistrationStateSuccess;
}

/// @nodoc
abstract class _$$_RegisterStateConfirmationSuccessCopyWith<$Res> {
  factory _$$_RegisterStateConfirmationSuccessCopyWith(
          _$_RegisterStateConfirmationSuccess value,
          $Res Function(_$_RegisterStateConfirmationSuccess) then) =
      __$$_RegisterStateConfirmationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterStateConfirmationSuccessCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res,
        _$_RegisterStateConfirmationSuccess>
    implements _$$_RegisterStateConfirmationSuccessCopyWith<$Res> {
  __$$_RegisterStateConfirmationSuccessCopyWithImpl(
      _$_RegisterStateConfirmationSuccess _value,
      $Res Function(_$_RegisterStateConfirmationSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterStateConfirmationSuccess
    implements _RegisterStateConfirmationSuccess {
  const _$_RegisterStateConfirmationSuccess();

  @override
  String toString() {
    return 'RegistrationState.registerConfirmation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterStateConfirmationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() registerConfirmation,
    required TResult Function(String error) error,
  }) {
    return registerConfirmation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? registerConfirmation,
    TResult? Function(String error)? error,
  }) {
    return registerConfirmation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? registerConfirmation,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (registerConfirmation != null) {
      return registerConfirmation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateSuccess value) registerSuccess,
    required TResult Function(_RegisterStateConfirmationSuccess value)
        registerConfirmation,
    required TResult Function(_RegistrationStateError value) error,
  }) {
    return registerConfirmation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult? Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult? Function(_RegistrationStateError value)? error,
  }) {
    return registerConfirmation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult Function(_RegistrationStateError value)? error,
    required TResult orElse(),
  }) {
    if (registerConfirmation != null) {
      return registerConfirmation(this);
    }
    return orElse();
  }
}

abstract class _RegisterStateConfirmationSuccess implements RegistrationState {
  const factory _RegisterStateConfirmationSuccess() =
      _$_RegisterStateConfirmationSuccess;
}

/// @nodoc
abstract class _$$_RegistrationStateErrorCopyWith<$Res> {
  factory _$$_RegistrationStateErrorCopyWith(_$_RegistrationStateError value,
          $Res Function(_$_RegistrationStateError) then) =
      __$$_RegistrationStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_RegistrationStateErrorCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegistrationStateError>
    implements _$$_RegistrationStateErrorCopyWith<$Res> {
  __$$_RegistrationStateErrorCopyWithImpl(_$_RegistrationStateError _value,
      $Res Function(_$_RegistrationStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_RegistrationStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegistrationStateError implements _RegistrationStateError {
  const _$_RegistrationStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'RegistrationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationStateErrorCopyWith<_$_RegistrationStateError> get copyWith =>
      __$$_RegistrationStateErrorCopyWithImpl<_$_RegistrationStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() registerSuccess,
    required TResult Function() registerConfirmation,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? registerSuccess,
    TResult? Function()? registerConfirmation,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? registerSuccess,
    TResult Function()? registerConfirmation,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegistrationStateInitial value) initial,
    required TResult Function(_RegistrationStateLoading value) loading,
    required TResult Function(_RegistrationStateSuccess value) registerSuccess,
    required TResult Function(_RegisterStateConfirmationSuccess value)
        registerConfirmation,
    required TResult Function(_RegistrationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RegistrationStateInitial value)? initial,
    TResult? Function(_RegistrationStateLoading value)? loading,
    TResult? Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult? Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult? Function(_RegistrationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegistrationStateInitial value)? initial,
    TResult Function(_RegistrationStateLoading value)? loading,
    TResult Function(_RegistrationStateSuccess value)? registerSuccess,
    TResult Function(_RegisterStateConfirmationSuccess value)?
        registerConfirmation,
    TResult Function(_RegistrationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RegistrationStateError implements RegistrationState {
  const factory _RegistrationStateError(final String error) =
      _$_RegistrationStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$_RegistrationStateErrorCopyWith<_$_RegistrationStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

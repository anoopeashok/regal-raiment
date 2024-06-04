import 'package:freezed_annotation/freezed_annotation.dart';

part '../../generated/application/state/login_state.freezed.dart';
@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginStateInitial;
  const factory LoginState.loading() = _LoginStateLoading;
  const factory LoginState.sentOTP() = _LoginStateSentOTP;
  const factory LoginState.loginSuccess() =
      _LoginStateSuccess;
  const factory LoginState.error(String error) = _LoginStateError;
}

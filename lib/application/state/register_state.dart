import 'package:freezed_annotation/freezed_annotation.dart';
part '../../generated/application/state/register_state.freezed.dart';
@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _RegistrationStateInitial;
  const factory RegistrationState.loading() = _RegistrationStateLoading;
  const factory RegistrationState.registerSuccess() = _RegistrationStateSuccess;
  const factory RegistrationState.registerConfirmation() = _RegisterStateConfirmationSuccess;
  const factory RegistrationState.error(String error) = _RegistrationStateError;
}

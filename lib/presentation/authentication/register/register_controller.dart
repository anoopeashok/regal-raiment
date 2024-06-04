
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../application/state/register_state.dart';
import '../../../infrastructure/models/register_model.dart';
import '../../../infrastructure/models/verify_otp_model.dart';
import '../../../infrastructure/repository/register_repository.dart';

part '../../../generated/presentation/authentication/register/register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  late RegisterUser _registerUser;
  RegisterRepository _registerRepository = RegisterRepository();

  @override
  RegistrationState build() {
    return const RegistrationState.initial();
  }

  Future<void> userRegistration(RegisterUser user) async {
    try {
      state = const RegistrationState.loading();
      this._registerUser = user;
      await _registerRepository.register(user);
      state = const RegistrationState.registerSuccess();
    } catch (e) {
      print(e.toString());
      state = RegistrationState.error(e.toString());
    }
  }

  Future<void> userRegistrationConfirmation(String code) async {
    try {
      state = const RegistrationState.loading();
      await _registerRepository.verifyOTP(VerifyOTPModel(phone: _registerUser.phone, otp: code));
      state = const RegistrationState.registerConfirmation();
    } catch (e) {
      state = RegistrationState.error(e.toString());
    }
  }
}

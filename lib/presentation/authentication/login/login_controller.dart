import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../application/state/login_state.dart';
import '../../../infrastructure/models/login_model.dart';
import '../../../infrastructure/models/send_otp_model.dart';
import '../../../infrastructure/repository/login_repository.dart';
part '../../../generated/presentation/authentication/login/login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  final _loginRepository = LoginRepository();
  late String phone;

  @override
  LoginState build() {
    return const LoginState.initial();
  }

  Future<void> sendOTP(SendOTPModel model) async {
    try {
      phone = model.phone;
      state = const LoginState.loading();
      await _loginRepository.sendOTP(model);
      state = const LoginState.sentOTP();
    } catch (e) {
      print(e);
      state = LoginState.error(e.toString());
    }
  }

  Future<void> login(String otp) async {
    try {
      state = const LoginState.loading();
      await _loginRepository.login(LoginModel(phone: phone, otp: otp));
      state = const LoginState.loginSuccess();
    } catch (e) {
      state = LoginState.error(e.toString());
    }
  }
}

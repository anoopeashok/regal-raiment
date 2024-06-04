
import 'package:regal_raiment/infrastructure/repository/user_repository.dart';

import '../data_sources/remote_data_source.dart';
import '../models/login_model.dart';
import '../models/send_otp_model.dart';
import '../models/user_model.dart';
import 'auth_repository.dart';

class LoginRepository {
  final _remoteDataSource = RemoteDataSource();
  final _userRepository = UserRepository();
  final _authRepository = AuthenticationRepository();

  final _loginPath = '/auth/login';
  final _triggerOTPPath = '/auth/sendotp';

  Future<void> login(LoginModel loginModel) async {
    final data = await _remoteDataSource.post(
        path: _loginPath, data: loginModel.toJson());
    User user = User.fromJson(data['user']);
    await _userRepository.saveUserDetails(user);
    await _authRepository.saveUserToken(data['token']);
  }

  Future<String> sendOTP(SendOTPModel otpModel) async {
    final data = await _remoteDataSource.post(
        path: _triggerOTPPath, data: otpModel.toJson());
    return data['msg'];
  }
}

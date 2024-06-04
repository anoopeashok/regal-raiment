
import '../data_sources/remote_data_source.dart';
import '../models/register_model.dart';
import '../models/verify_otp_model.dart';
import 'auth_repository.dart';
import 'user_repository.dart';

class RegisterRepository {
  final _remoteDataSource = RemoteDataSource();
  final _authRepository = AuthenticationRepository();
  final _userRepository = UserRepository();

  final _verifyUserPath = '/auth/verifyuser';
  final _registerPath = '/auth/register';

  Future<void> register(RegisterUser user) async {
    await _remoteDataSource.post(path: _registerPath, data: user.toJson());
  }

  Future<void> verifyOTP(VerifyOTPModel otpModel) async {
    final data = await _remoteDataSource.post(
        path: _verifyUserPath, data: otpModel.toJson());

    await _authRepository.saveUserToken(data['token']);
    await _userRepository.saveUserDetails(data['user']);
  }
}

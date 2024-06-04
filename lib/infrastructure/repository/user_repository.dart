import '../data_sources/remote_data_source.dart';
import '../data_sources/secure_data_source.dart';
import '../models/user_model.dart';

class UserRepository {
  final userKey = 'user_key';
  final userPath = '/user';

  final _remoteDataSource = RemoteDataSource();
  final _localSecureStorage = SecureDataSource();

  Future<User> getUserDetails() async {
    final data = await _localSecureStorage.getData(key: userKey);
    User user;
    if (data != null) {
      user = User.fromJson(data);
    } else {
      final data = await _remoteDataSource.get(path: userPath);
      user = User.fromJson(data['user']);
    }
    return user;
  }

  Future<void> saveUserDetails(User user) async {
    await _localSecureStorage.writeData(key: userKey, data: user.toJson());
  }

  Future<void> updateUserDetails() {
    // TODO: implement updateUserDetails
    throw UnimplementedError();
  }
}

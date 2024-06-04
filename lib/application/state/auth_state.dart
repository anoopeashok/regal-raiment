import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/inmemory_store.dart';
import '../../infrastructure/models/user_model.dart';
part '../../generated/application/state/auth_state.g.dart';

@riverpod
class AuthenticationState extends _$AuthenticationState {
  final _authState = InMemoryStore<User?>(null);

  @override
  User? build() {
    return _authState.value;
  }

  User? get currentUser => _authState.value;

  set setUser(User? user) {
    _authState.value = user;
  }

  Stream<User?> getAuthStateStream() => _authState.stream;
}

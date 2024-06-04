import 'package:freezed_annotation/freezed_annotation.dart';
part '../../generated/infrastructure/models/user_model.freezed.dart';
part '../../generated/infrastructure/models/user_model.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String name,
      required String phone,
      required String status,
      required String pincode,
      required String address,
      required String role,
     }) = _User;
  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);
}

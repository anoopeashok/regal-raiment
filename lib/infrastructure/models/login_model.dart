class LoginModel {
  String phone, otp;

  LoginModel({required this.phone, required this.otp});

  Map<String, String> toJson() => {"phone": phone, "otp": otp};
}

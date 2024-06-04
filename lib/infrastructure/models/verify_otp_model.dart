class VerifyOTPModel {
  String phone, otp;

  VerifyOTPModel({required this.phone, required this.otp});

  Map<String, String> toJson() => {"phone":phone,"otp":otp};
}

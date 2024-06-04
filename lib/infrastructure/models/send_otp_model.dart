class SendOTPModel {
  String phone;

  SendOTPModel({required this.phone});

  Map<String, String> toJson() => { "phone":phone  };
}

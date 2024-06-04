
class RegisterUser {
  String name, phone, pincode;
  RegisterUser(
      {required this.name, required this.phone, required this.pincode});

  Map<String, String> toJson() => {
    "name":name,
    "phone":phone,
    "pincode":pincode
  };
}

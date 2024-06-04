import 'package:flutter/material.dart';
import '../register/register_confirmation.dart';

class OTPWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  late String a, b, c, d, e, f;

  String? onSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      return a + b + c + d + e + f;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        children: [
          ConfirmationInputField((val) {
            a = val!;
          }),
          ConfirmationInputField((val) {
            b = val!;
          }),
          ConfirmationInputField((val) {
            c = val!;
          }),
          ConfirmationInputField((val) {
            d = val!;
          }),
          ConfirmationInputField((val) {
            e = val!;
          }),
          ConfirmationInputField((val) {
            f = val!;
          }),
        ],
      ),
    );
  }
}

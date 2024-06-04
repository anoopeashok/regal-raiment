import 'package:flutter/material.dart';

import '../../../shared/register_validator.dart';

class PhoneField extends StatelessWidget {
  PhoneField({super.key, required this.onSaved});
  void Function(String? name) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'Phone'),
      validator: RegisterValidator().validatePhone,
      onSaved: onSaved,
    );
  }
}

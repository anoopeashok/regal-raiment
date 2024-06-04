import 'package:flutter/material.dart';

import '../../../shared/register_validator.dart';

class NameField extends StatelessWidget {
  NameField({super.key, required this.onSaved});
  void Function(String? name) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'Name'),
      validator: RegisterValidator().validateName,
      onSaved: onSaved,
    );
  }
}

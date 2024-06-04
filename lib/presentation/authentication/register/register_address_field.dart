import 'package:flutter/material.dart';

import '../../../shared/dimensions.dart';
import '../../../shared/register_validator.dart';


class AddressField extends StatelessWidget {
  AddressField({super.key, required this.onAddressSaved,required this.onPincodeSaved});
  void Function(String? value) onAddressSaved;
  void Function(String? value) onPincodeSaved;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(hintText: 'Place'),
            validator: RegisterValidator().validatePhone,
            onSaved: onAddressSaved,
          ),
        ),
        const SizedBox(
          width: Dimensions.size12,
        ),
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(hintText: 'Pincode'),
            validator: RegisterValidator().validatePhone,
            onSaved: onPincodeSaved,
          ),
        ),
      ],
    );
  }
}

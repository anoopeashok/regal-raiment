import 'package:flutter/material.dart';

class PincodeField extends StatelessWidget {
  void Function(String? pincode) onSaved;
  PincodeField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'Pincode'),
      
      onSaved: onSaved,
    );
  }
}

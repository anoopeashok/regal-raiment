
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  
  PasswordField({super.key, required this.onSaved});
  void Function(String? name) onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  void changeObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: IconButton(
              onPressed: changeObscureText,
              icon:
                  Icon(obscureText ? Icons.visibility : Icons.visibility_off))),
      onSaved: widget.onSaved,
    );
  }
}

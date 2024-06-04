import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterConfirmButton extends ConsumerWidget {
  void Function() onPressed;

  RegisterConfirmButton(this.onPressed);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(onPressed: onPressed, child: Text('Confirm User'));
  }
}

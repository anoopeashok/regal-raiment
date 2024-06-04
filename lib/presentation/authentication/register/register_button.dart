import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/dimensions.dart';
import '../register/register_controller.dart';

class RegisterButton extends ConsumerWidget {
  
  RegisterButton({required this.onPressed});

  void Function() onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(registerControllerProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimensions.size12),
      child: controller.maybeWhen(
          loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
          orElse: () =>  ElevatedButton(onPressed: onPressed, child: Text('Sign up',style: TextStyle(color: Colors.white),))),
    );
  }
}

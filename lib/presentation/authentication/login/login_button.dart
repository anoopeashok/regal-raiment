import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/dimensions.dart';
import 'login_controller.dart';

class LoginButton extends ConsumerWidget {

  LoginButton({required  this.onPressed});
  void Function() onPressed;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: Dimensions.size12),
      child: state.maybeWhen(
          loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
          orElse: () =>
              ElevatedButton(onPressed: onPressed, child: const Text('Sign in',style: TextStyle(color: Colors.white),))),
    );
  }
}

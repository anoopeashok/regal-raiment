import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../application/state/register_state.dart';
import '../../../router/routing.dart';
import '../../../shared/dimensions.dart';
import '../register/register_controller.dart';
import '../widgets/auth_header.dart';
import 'register_confirm_button.dart';

class RegisterConfirmation extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  late String a, b, c, d, e, f;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(registerControllerProvider.notifier);

    ref.listen<RegistrationState>(registerControllerProvider,
        ((previous, next) {
      if (next == const RegistrationState.registerConfirmation()) {
        context.goNamed(AppRoutes.home.name);
      }
    }));

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthenticationHeader(),
            Padding(
              padding: const EdgeInsets.all(Dimensions.size20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verify your phone number',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(
                    height: Dimensions.size12,
                  ),
                  Text(
                    'Please enter OTP below to verify',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: Dimensions.size20,
                  ),
                  Form(
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
                  ),
                  SizedBox(
                    height: Dimensions.size100,
                  ),
                  RegisterConfirmButton(() {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      String code = a + b + c + d+e+f;
                      notifier.userRegistrationConfirmation(code);
                    }
                  })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConfirmationInputField extends StatelessWidget {
  void Function(String? value) onSaved;

  ConfirmationInputField(this.onSaved);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.size4),
        child: TextFormField(
          maxLength: 1,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onSaved: onSaved,
        ),
      ),
    );
  }
}

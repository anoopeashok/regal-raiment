import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:regal_raiment/infrastructure/models/register_model.dart';

import '../../../../router/routing.dart';
import '../../../../shared/dimensions.dart';
import '../../../application/state/register_state.dart';
import '../../../shared/responsive.dart';
import '../../../shared/widgets/pincode_field.dart';
import '../widgets/auth_header.dart';
import '../widgets/indian_market.dart';
import '../widgets/register_phone_field.dart';
import 'register_button.dart';
import 'register_controller.dart';
import 'register_name_field.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
            mobile: RegisterViewMobile(), desktop: RegisterViewWeb()));
  }
}

class RegisterViewWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex:6, child: PromotionalImage()),
        Expanded(flex:4, child: RegisterViewMobile())
      ],
    );
  }
}

class RegisterViewMobile extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  late String _name, _phone, _pincode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(registerControllerProvider.notifier);

    ref.listen<RegistrationState>(registerControllerProvider,
        ((previous, next) {
      if (next == const RegistrationState.registerSuccess()) {
        context.goNamed(AppRoutes.userconfirm.name);
      }
    }));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthenticationHeader(),
            Form(
              key: _formKey,
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: Dimensions.size450,
                ),
                padding: EdgeInsets.all(Dimensions.size16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Create a new account',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(
                      height: Dimensions.size8,
                    ),
                    Text(
                      'Please complete below form to create a new account',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: Dimensions.size12,
                    ),
                    NameField(onSaved: (value) {
                      _name = value!;
                    }),
                    const SizedBox(
                      height: Dimensions.size12,
                    ),
                    PhoneField(onSaved: (value) {
                      _phone = value!;
                    }),
               
                    const SizedBox(
                      height: Dimensions.size16,
                    ),
                    RegisterButton(onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        RegisterUser user = RegisterUser(
                            name: _name, phone: _phone, pincode: _pincode);
                        notifier.userRegistration(user);
                      }
                    }),
                    const SizedBox(
                      height: Dimensions.size12,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        SizedBox(
                          width: Dimensions.size4,
                        ),
                        InkWell(
                          onTap: () => context.goNamed(AppRoutes.login.name),
                          child: Text(
                            'Sign in',
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

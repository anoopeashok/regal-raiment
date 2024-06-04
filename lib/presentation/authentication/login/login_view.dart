import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../application/state/login_state.dart';
import '../../../infrastructure/models/send_otp_model.dart';
import '../../../router/routing.dart';
import '../../../shared/dimensions.dart';
import '../../../shared/responsive.dart';
import '../widgets/indian_market.dart';
import 'login_button.dart';
import '../widgets/auth_header.dart';
import '../widgets/register_phone_field.dart';
import 'login_controller.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Responsive(mobile: LoginMobileView(), desktop: LoginWebView()),
    );
  }
}

class LoginWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: PromotionalImage()),
        Expanded(
          flex: 4,
          child: LoginMobileView())
      ],
    );
  }
}

class LoginMobileView extends ConsumerWidget {
  late String phone;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(loginControllerProvider.notifier);
    ref.listen<LoginState>(loginControllerProvider, (prev, next) {
      if (next == const LoginState.sentOTP()) {
        context.goNamed(AppRoutes.loginotp.name);
      }
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AuthenticationHeader(),
            Container(
              padding: const EdgeInsets.all(Dimensions.size16),
              constraints: const BoxConstraints(maxWidth: Dimensions.size450),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'welcome_back',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      height: Dimensions.size8,
                    ),
                    Text('pls_signin_continue'.tr(),
                        style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(
                      height: Dimensions.size16,
                    ),
                    PhoneField(onSaved: (value) {
                      phone = value!;
                      print(value);
                    }),
                    const SizedBox(
                      height: Dimensions.size8,
                    ),
                    LoginButton(onPressed: () async{

                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();

                        await notifier.sendOTP(SendOTPModel(phone: phone));
                      }
                    }),
                    const SizedBox(
                      height: Dimensions.size12,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        const SizedBox(
                          width: Dimensions.size4,
                        ),
                        InkWell(
                          onTap: () => context.goNamed(AppRoutes.register.name),
                          child: const Text(
                            'Sign up',
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

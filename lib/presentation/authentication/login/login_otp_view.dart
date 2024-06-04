import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../router/routing.dart';
import '../../../../shared/dimensions.dart';
import '../../../application/state/login_state.dart';
import '../../../shared/responsive.dart';
import '../widgets/auth_header.dart';
import '../widgets/indian_market.dart';
import '../widgets/otp_widget.dart';
import 'login_button.dart';
import 'login_controller.dart';

class LoginOTPView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Responsive(mobile: LoginOTPViewMobile(), desktop: LoginOTPViewWeb()),
    );
  }
}

class LoginOTPViewWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: PromotionalImage()),
        Expanded(child: LoginOTPViewMobile())
      ],
    );
  }
}

class LoginOTPViewMobile extends ConsumerWidget {
  OTPWidget _otpWidget = OTPWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(loginControllerProvider.notifier);
    ref.listen<LoginState>(loginControllerProvider, (prev, next) {
      if (next == const LoginState.loginSuccess()) {
        context.goNamed(AppRoutes.home.name);
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Signin with phone number',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: Dimensions.size12,
                  ),
                  Text(
                    'Please enter OTP below to signin',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: Dimensions.size20,
                  ),
                  _otpWidget,
                  LoginButton(onPressed: () {
                    final otp = _otpWidget.onSubmit();
                    if (otp != null) {
                      notifier.login(otp);
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

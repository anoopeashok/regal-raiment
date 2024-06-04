
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:regal_raiment/presentation/home/home_bottom_navigation.dart';

import '../presentation/home/home_view.dart';
import '../presentation/authentication/login/login_otp_view.dart';
import '../presentation/authentication/login/login_view.dart';
import '../presentation/authentication/register/register_confirmation.dart';
import '../presentation/authentication/register/register_view.dart';
import '../presentation/splash screen/splash_screen.dart';
import 'go_router_refresh_stream.dart';

enum AppRoutes {
  splashscreen,
  register,
  login,
  loginotp,
  userconfirm,
  home
  }

final routeProvider = Provider((ref) {
  //final authStateProvider = ref.watch(authenticationStateProvider);

  return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
//      refreshListenable:
      // GoRouterRefreshStream(authStateProvider.getAuthStateStream()),
      routes: [
        GoRoute(
            path: '/',
            name: AppRoutes.splashscreen.name,
            builder: (BuildContext context, GoRouterState state) {
              return SplashScreen();
            }),
        GoRoute(
            path: '/register',
            name: AppRoutes.register.name,
            builder: (context, state) => RegisterView(),
            routes: [
              GoRoute(
                  path: 'confirmuser',
                  name: AppRoutes.userconfirm.name,
                  builder: (context, state) => RegisterConfirmation())
            ]),
        GoRoute(
            path: '/login',
            name: AppRoutes.login.name,
            builder: (context, state) => LoginView(),
            routes: [
              GoRoute(
                  path: 'otp',
                  name: AppRoutes.loginotp.name,
                  builder: (context, state) => LoginOTPView())
            ]),
        GoRoute(
            path: '/home',
            name: AppRoutes.home.name,
            builder: (context, state) => HomeBottomNavigation(),
         )
      ]);
});

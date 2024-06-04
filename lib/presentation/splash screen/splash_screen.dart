import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../router/routing.dart';
import '../../shared/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initialSetup();
  }

  void initialSetup() async{
    await Future.delayed(const Duration(seconds: 2));
    context.goNamed(AppRoutes.home.name);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: Image.asset('assets/logo/logo.png'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:regal_raiment/router/routing.dart';
import 'package:regal_raiment/shared/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(routeProvider);
    return ScreenUtilInit(
      designSize: const Size(720, 1280),
        minTextAdapt: true,
        splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp.router(
          title: 'Regal Raiment',
          theme: themeData(),
          routerConfig: provider,
          // navigatorObservers: [
          //   FirebaseAnalyticsObserver(analytics: FirebaseAnalytics()),
          // ],
        );
      }
    );
  }
}

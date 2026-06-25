import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/router/router.dart';
import 'package:tvapp/config/theme/light.theme.dart';
import 'package:tvapp/ui/providers/auth/auth_provider.dart';
import 'package:tvapp/ui/providers/connectivity/internet_check_provider.dart';
import 'package:tvapp/ui/providers/multicdn/multicdn_provider.dart';
import 'package:tvapp/ui/providers/notification/notifications_provider.dart';

import 'config/error_handler/error_handler.dart';


Future<void> main() async {
  // enableFlutterDriverExtension();
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  
  runApp(
    ProviderScope(
      observers: [
        ErrorHandler(),
      ],
      child: const _Initialization(
        child: MyApp()
      ),
    ),
  );
}

class _Initialization extends ConsumerWidget {
  const _Initialization({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final values = [
      ref.watch(internetCheckProvider),
    ];

    if (values.every((value) => value.hasValue)) {
      return child;
    }

    return const SizedBox();
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final router = ref.watch(appRouterProvider);
    ref.watch(multiCDNProvider);
    ref.watch(notificationsProvider);

    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: Environment.appDebugMode,
      title: Environment.appName,
      theme: lightTheme,
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/environment/environment.dart';
import 'package:tvapp/config/router/router.dart';
import 'package:tvapp/config/theme/light.theme.dart';
import 'package:tvapp/firebase_options.dart';
import 'package:tvapp/providers/connectivity_notifier.state.dart';
import 'package:tvapp/storage/secure_storage.dart';
import 'package:tvapp/storage/tools/local_storage.dart';
import 'package:tvapp/widgets/no_internet_dialog.dart';

import 'config/error_handler/error_handler.dart';

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await LocalStorage.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: 'newtvapp'
  );
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  runApp(
    ProviderScope(
      observers: [
        ErrorHandler(),
      ],
      child: const _Initialization(
        child: MyApp()
        /* child: MediaQuery(
        data: MediaQueryData.fromView(WidgetsBinding.instance.window).copyWith(
          textScaler: const TextScaler.linear(1),
        ),
        child: const MyApp()) */
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
      ref.watch(secureStorageProvider),
      ref.watch(connectivityNotifierProvider), // Monitorea la conectividad desde el inicio
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

    // Escucha cambios en la conectividad
    final isConnected = ref.watch(connectivityNotifierProvider);

    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: Environment.appDebugMode,
      title: Environment.appName,
      localizationsDelegates: const [
        // AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
      locale: Locale(Environment.appPrincipalLang),
      theme: lightTheme,
      builder: (context, child){
        return Stack(
        children: [
            child!,
            isConnected.when(data: (data){
              return !data.isConnected && !data.isDialogClosedManually ? const NoInternetDialog() : const SizedBox();
            }, error: (Object error, StackTrace stackTrace) { return const Text('Error de conexión'); }, loading: ()=>const SizedBox())
          ],
        );
      }
    );
  }
}

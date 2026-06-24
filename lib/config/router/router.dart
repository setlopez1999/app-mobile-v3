import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_transitions/go_transitions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/channel.entity.dart';
import 'package:tvapp/presentation/screens/channels/channel_details.screen.dart';
import 'package:tvapp/presentation/screens/channels/channels.screen.dart';
import 'package:tvapp/presentation/screens/channels/screens/guide.channels.screen.dart';
import 'package:tvapp/presentation/screens/channels/screens/search.screen.dart';
import 'package:tvapp/presentation/screens/favorites/screens/search-favorites.screen.dart';
import 'package:tvapp/presentation/screens/home/home.screen.dart';
import 'package:tvapp/presentation/screens/home/notifications/notifications.home.screen.dart';
import 'package:tvapp/presentation/screens/initial_loader/initial_loader.screen.dart';
import 'package:tvapp/presentation/screens/login/login.screen.dart';
import 'package:tvapp/presentation/screens/menu/menu_grid.screen.dart';
import 'package:tvapp/presentation/screens/my_account/change_password.my_account.screen.dart';
import 'package:tvapp/presentation/screens/my_account/family_filter.my_account.screen.dart';
import 'package:tvapp/presentation/screens/my_account/plan.my_account.screen.dart';
import 'package:tvapp/presentation/screens/my_account/plans.my_account.screen.dart';
import 'package:tvapp/presentation/screens/my_account/profile.my_account.screen.dart';
import 'package:tvapp/presentation/screens/player/player.screen.dart';
import 'package:tvapp/presentation/screens/privacy_policies/privacy_policies.screen.dart';
import 'package:tvapp/presentation/screens/register/register-confirmation.screen.dart';
import 'package:tvapp/presentation/screens/register/register.screen.dart';
import 'package:tvapp/presentation/screens/terms_and_conditions/terms_and_conditions.screen.dart';
// Tools (Check Health) screens
import 'package:tvapp/presentation/screens/tools/check_health/check_health_screen.dart';
import 'package:tvapp/presentation/screens/tools/diagnostico/diagnostico_screen.dart';
import 'package:tvapp/presentation/screens/tools/diagnostico/diagnostico_result_screen.dart';
import 'package:tvapp/presentation/screens/tools/gaming/gaming_screen.dart';
import 'package:tvapp/presentation/screens/tools/gaming/gaming_detail_screen.dart';
import 'package:tvapp/presentation/screens/tools/gaming/gaming_streaming_screen.dart';
import 'package:tvapp/presentation/screens/tools/streaming/streaming_screen.dart';
import 'package:tvapp/presentation/screens/tools/streaming/streaming_detail_screen.dart';
import 'package:tvapp/presentation/screens/tools/chat/chat_screen.dart';
import 'package:tvapp/presentation/screens/tools/dispositivos/devices_screen.dart';
import 'package:tvapp/presentation/screens/tools/offline/offline_screen.dart';
import 'package:tvapp/presentation/screens/tools/offline/offline_result_screen.dart';
import 'package:tvapp/presentation/screens/tools/asistencia/asistencia_intro_screen.dart';
import 'package:tvapp/presentation/screens/tools/asistencia/asistencia_loading_screen.dart';
import 'package:tvapp/presentation/screens/tools/asistencia/asistencia_problem_screen.dart';
import 'package:tvapp/presentation/screens/tools/asistencia/asistencia_success_screen.dart';
import 'package:tvapp/presentation/screens/tools/historial/historial_screen.dart';
import 'package:tvapp/providers/auth_state.dart';

part 'router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final authStateNotifier = ValueNotifier(AuthState.unknown);
  ref
    ..onDispose(authStateNotifier.dispose)
    ..listen(currentAuthStateProvider, (_, value) {
      authStateNotifier.value = value;
    });
  final routerKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

  return GoRouter(
    navigatorKey: routerKey,
    debugLogDiagnostics: true,
    initialLocation: '/',
    refreshListenable: authStateNotifier,
    redirect: (_, state) {
      final authState = ref.read(currentAuthStateProvider);

      if (authState == AuthState.unknown && state.fullPath == '/') {
        return null;
      }
      if (authState == AuthState.unknown) {
        return '/';
      }
      if (!authState.allowedPaths.contains(state.fullPath)) {
        return authState.redirectPath;
      }
      return null;
    },
    routes: [
      // ── Splash / Loader ──────────────────────────────────────────────────
      GoRoute(
        path: '/',
        name: InitialLoaderScreen.name,
        builder: (_, __) => const InitialLoaderScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      // ── Auth ─────────────────────────────────────────────────────────────
      GoRoute(
        path: '/login',
        name: LoginScreen.name,
        builder: (_, __) => const LoginScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/register',
        name: RegisterScreen.name,
        builder: (_, __) => const RegisterScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/register-confirmation',
        name: RegisterConfirmationScreen.name,
        builder: (_, __) => const RegisterConfirmationScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/terms',
        name: TermsAndConditions.name,
        builder: (_, __) => const TermsAndConditions(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/policies',
        name: PrivacyPolicies.name,
        builder: (_, __) => const PrivacyPolicies(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      // ── Menu principal (post-login) ───────────────────────────────────────
      GoRoute(
        path: MenuGridScreen.path,
        name: MenuGridScreen.name,
        builder: (_, __) => const MenuGridScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      // ── IPTV / Home de B ─────────────────────────────────────────────────
      GoRoute(
        path: '/home',
        name: HomeScreen.name,
        builder: (_, __) => const HomeScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/notifications',
        name: NotificationsScreen.name,
        builder: (_, __) => const NotificationsScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/channels',
        name: ChannelsScreen.name,
        builder: (_, __) => const ChannelsScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/channel-details',
        name: ChannelDetailsScreen.name,
        builder: (_, state) {
          final channel = state.extra as Channel;
          return ChannelDetailsScreen(channel: channel);
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/player',
        name: PlayerScreen.name,
        builder: (_, state) {
          final params = state.extra as Map<String, dynamic>;
          return PlayerScreen(
            channel: params['channel'],
            channels: params['channels'],
            categoryId: params['categoryId'],
          );
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/search',
        name: SearchScreen.name,
        builder: (_, __) => const SearchScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/search-favorites',
        name: SearchFavoritesScreen.name,
        builder: (_, __) => const SearchFavoritesScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tv-guide',
        name: GuideScreen.name,
        builder: (_, __) => const GuideScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/profile',
        name: ProfileScreen.name,
        builder: (_, __) => const ProfileScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/plan',
        name: PlanScreen.name,
        builder: (_, __) => const PlanScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/plans',
        name: PlansScreen.name,
        builder: (_, state) {
          final params = state.extra as Map<String, dynamic>;
          return PlansScreen(
            currentPlanToRemoveFromPlans: params['currentPlanToRemoveFromPlans'],
          );
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/change-password',
        name: ChangePasswordScreen.name,
        builder: (_, __) => const ChangePasswordScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/family-filter',
        name: FamilyFilterScreen.name,
        builder: (_, __) => const FamilyFilterScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      // ── Tools — Check Health ──────────────────────────────────────────────
      GoRoute(
        path: '/tools/check-health',
        name: 'CheckHealth',
        builder: (_, __) => const CheckHealthScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/diagnostico',
        name: 'Diagnostico',
        builder: (_, __) => const DiagnosticoScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/diagnostico-result',
        name: 'DiagnosticoResult',
        builder: (_, __) => const DiagnosticoResultScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/gaming',
        name: 'Gaming',
        builder: (_, __) => const GamingScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/gaming-detail',
        name: 'GamingDetail',
        builder: (_, state) {
          final gameId = state.extra as String? ?? '';
          return GamingDetailScreen(gameId: gameId);
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/gaming-streaming',
        name: 'GamingStreaming',
        builder: (_, __) => const GamingStreamingScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/streaming',
        name: 'Streaming',
        builder: (_, __) => const StreamingScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/streaming-detail',
        name: 'StreamingDetail',
        builder: (_, state) {
          final platformId = state.extra as String? ?? '';
          return StreamingDetailScreen(platformId: platformId);
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/chat',
        name: 'Chat',
        builder: (_, __) => const ChatScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/dispositivos',
        name: 'Dispositivos',
        builder: (_, __) => const DevicesScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/offline',
        name: 'Offline',
        builder: (_, __) => const OfflineScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/offline-result',
        name: 'OfflineResult',
        builder: (_, __) => const OfflineResultScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/asistencia',
        name: 'AsistenciaIntro',
        builder: (_, __) => const AsistenciaIntroScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/asistencia-loading',
        name: 'AsistenciaLoading',
        builder: (_, __) => const AsistenciaLoadingScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/asistencia-problem',
        name: 'AsistenciaProblem',
        builder: (_, __) => const AsistenciaProblemScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/asistencia-success',
        name: 'AsistenciaSuccess',
        builder: (_, __) => const AsistenciaSuccessScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      GoRoute(
        path: '/tools/historial',
        name: 'Historial',
        builder: (_, __) => const HistorialScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
    ],
  );
}

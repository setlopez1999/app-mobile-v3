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

      // Si el estado es unknown y estamos en InitialLoaderScreen, no redirigir
      if (authState == AuthState.unknown && state.fullPath == '/') {
        return null;
      }

      // Si el estado es unknown y no estamos en InitialLoaderScreen, ir a InitialLoaderScreen
      if (authState == AuthState.unknown) {
        return '/';
      }

      if (!authState.allowedPaths.contains(state.fullPath)) {
        return authState.redirectPath;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: InitialLoaderScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return const InitialLoaderScreen();
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Login route
      GoRoute(
        path: '/login',
        name: LoginScreen.name,
        builder: (_, __) => const LoginScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Register route
      GoRoute(
        path: '/register',
        name: RegisterScreen.name,
        builder: (_, __) => const RegisterScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),
      /// Register route
      GoRoute(
        path: '/register-confirmation',
        name: RegisterConfirmationScreen.name,
        builder: (_, __) => const RegisterConfirmationScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Terms and conditions
      GoRoute(
        path: '/terms',
        name: TermsAndConditions.name,
        builder: (_, __) => const TermsAndConditions(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Privacy Policie
      GoRoute(
        path: '/policies',
        name: PrivacyPolicies.name,
        builder: (_, __) => const PrivacyPolicies(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Home route
      GoRoute(
        path: '/home',
        name: HomeScreen.name,
        builder: (_, __) => const HomeScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Notifications route
      GoRoute(
        path: '/notifications',
        name: NotificationsScreen.name,
        builder: (_, __) => const NotificationsScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Channels route
      GoRoute(
        path: '/channels',
        name: ChannelsScreen.name,
        builder: (_, __) => const ChannelsScreen(),
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Channels Details route
      GoRoute(
        path: '/channel-details',
        name: ChannelDetailsScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          final channel = state.extra as Channel;
          return ChannelDetailsScreen(channel: channel);
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Channels Details route
      GoRoute(
        path: '/player',
        name: PlayerScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          final params = state.extra as Map<String, dynamic>;
          return PlayerScreen(
            channel: params['channel'],
            channels: params['channels'],
            categoryId: params['categoryId'],
          );
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Search route
      GoRoute(
        path: '/search',
        name: SearchScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),
      
      /// Search favorites route
      GoRoute(
        path: '/search-favorites',
        name: SearchFavoritesScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchFavoritesScreen();
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Tv guide route
      GoRoute(
        path: '/tv-guide',
        name: GuideScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return const GuideScreen();
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Profile route
      GoRoute(
        path: '/profile',
        name: ProfileScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileScreen();
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Plan route
      GoRoute(
        path: '/plan',
        name: PlanScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return const PlanScreen();
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Plans route
      GoRoute(
        path: '/plans',
        name: PlansScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          final params = state.extra as Map<String, dynamic>;
          
          return PlansScreen(
            currentPlanToRemoveFromPlans: params['currentPlanToRemoveFromPlans'],
          );
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Change password route
      GoRoute(
        path: '/change-password',
        name: ChangePasswordScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return const ChangePasswordScreen();
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),

      /// Filter family route
      GoRoute(
        path: '/family-filter',
        name: FamilyFilterScreen.name,
        builder: (BuildContext context, GoRouterState state) {
          return const FamilyFilterScreen();
        },
        pageBuilder: GoTransitions.cupertino.call,
      ),
    ],
  );
}

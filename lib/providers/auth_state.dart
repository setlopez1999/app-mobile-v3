import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supercontext/supercontext.dart';
import 'package:tvapp/domain/repositories/auth.repository.dart';
import 'package:tvapp/storage/secure_storage.dart';

part 'auth_state.g.dart';

@riverpod
class CurrentAuthState extends _$CurrentAuthState {
  final repository = AuthRepository();
  final _prefs = SharedPreferences.getInstance();

  @override
  AuthState build() {
    final secureStorageAsync = ref.read(secureStorageProvider);
    // Manejo seguro del AsyncValue
    return secureStorageAsync.when(
      data: (secureStorage) {
        final token = secureStorage.get('token');

        if(token.isNotNull) {
          repository.reRegisterFCM(secureStorage.get('email')!);
          return AuthState.authenticated;
        }

        return AuthState.unauthenticated;
      },
      loading: () => AuthState.unknown, // Mientras carga, estado desconocido
      error: (error, stack) => AuthState.unauthenticated, // En caso de error, no autenticado
    );
  }

  Future<String?> login({
    required String email,
    required String pass,
  }) async {
    final prefs = await _prefs;
    final secureStorage = await ref.read(secureStorageProvider.future);
    final result = await repository.login(email: email, password: pass);

    String? error;
    String token = '';
    String parental = '';
    String deviceID = '';

    result.fold(
      (left) {
        error = left;
      },
      (right) {
        token = right[0];
        deviceID = right[1];
        parental = right[2];
      },
    );

    if (token.isNotEmpty) {
      await prefs.setString('email', email);
      await prefs.setString('deviceID', deviceID);
      await secureStorage.set('token', token);
      await secureStorage.set('parental', parental);
      await secureStorage.set('email', email);
      state = AuthState.authenticated;
      return null;
    }

    state = AuthState.unauthenticated;
    return error;
  }

  Future<void> logout() async {
    final prefs = await _prefs;
    final secureStorage = await ref.read(secureStorageProvider.future);
    await prefs.remove('email');
    await prefs.remove('deviceID');
    await repository.desvincule(secureStorage.get('token')!);
    await secureStorage.remove('token');
    await secureStorage.remove('parental');
    state = AuthState.unauthenticated;
  }
}

enum AuthState {
  unknown(
    redirectPath: '/',
    allowedPaths: [
      '/',
    ],
  ),
  unauthenticated(
    redirectPath: '/login',
    allowedPaths: [
      '/login',
      '/register',
      '/register-confirmation',
      '/change-password',
      '/terms',
      '/policies'
    ],
  ),
  authenticated(
    redirectPath: '/menu',
    allowedPaths: [
      '/menu',
      '/home',
      '/notifications',
      '/player',
      '/channels',
      '/profile',
      '/plan',
      '/plans',
      '/change-password',
      '/family-filter',
      '/channel-details',
      '/search',
      '/tv-guide',
      '/search-favorites',
      // Tools (Check Health)
      '/tools',
      '/tools/check-health',
      '/tools/diagnostico',
      '/tools/diagnostico-result',
      '/tools/gaming',
      '/tools/gaming-detail',
      '/tools/gaming-streaming',
      '/tools/streaming',
      '/tools/streaming-detail',
      '/tools/chat',
      '/tools/dispositivos',
      '/tools/offline',
      '/tools/offline-result',
      '/tools/asistencia',
      '/tools/asistencia-loading',
      '/tools/asistencia-problem',
      '/tools/asistencia-success',
      '/tools/historial',
    ],
  );

  const AuthState({
    required this.redirectPath,
    required this.allowedPaths,
  });

  final String redirectPath;
  final List<String> allowedPaths;
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/repositories/tools/i_gaming_repository.dart';
import 'package:tvapp/domain/repositories/tools/gaming_api_repository_impl.dart';
import 'package:tvapp/domain/entities/tools/servidor_juego.dart';
import 'package:tvapp/providers/tools/diagnostico_providers.dart';
import 'package:tvapp/providers/tools/tools_providers_core.dart';

final gamingApiRepositoryImplProvider = Provider<GamingApiRepositoryImpl>((ref) {
  final repo = GamingApiRepositoryImpl(ref.watch(apiClientProvider));
  ref.onDispose(repo.dispose);
  return repo;
});

final gamingApiRepositoryProvider = Provider<IGamingRepository>((ref) {
  return ref.watch(gamingApiRepositoryImplProvider);
});

final servidoresJuegoProvider = FutureProvider<List<ServidorJuego>>((ref) async {
  return ref.watch(gamingApiRepositoryProvider).getServidores();
});

final servidoresJuegoStreamProvider = StreamProvider<List<ServidorJuego>>((ref) {
  return ref.watch(gamingApiRepositoryImplProvider).watchServidores();
});

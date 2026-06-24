import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/repositories/tools/diagnostico_repository.dart';
import 'package:tvapp/domain/repositories/tools/diagnostico_repository_impl.dart';
import 'package:tvapp/domain/entities/tools/diagnostico.dart';
import 'package:tvapp/providers/tools/diagnostico_providers.dart';
import 'package:tvapp/providers/tools/tools_providers_core.dart';

final diagnosticoRepositoryProvider = Provider<DiagnosticoRepository>((ref) {
  return DiagnosticoRepositoryImpl(ref.watch(apiClientProvider));
});

final historialDiagnosticoProvider = FutureProvider<List<Diagnostico>>((ref) async {
  return ref.watch(diagnosticoRepositoryProvider).getHistorial();
});

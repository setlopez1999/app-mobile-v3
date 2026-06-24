import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/repositories/tools/fibra_repository.dart';
import 'package:tvapp/domain/repositories/tools/fibra_repository_impl.dart';
import 'package:tvapp/domain/entities/tools/fibra.dart';
import 'package:tvapp/providers/tools/diagnostico_providers.dart';
import 'package:tvapp/providers/tools/tools_providers_core.dart';

final fibraRepositoryProvider = Provider<FibraRepository>((ref) {
  return FibraRepositoryImpl(ref.watch(apiClientProvider));
});

final fibraProvider = FutureProvider<Fibra>((ref) async {
  return ref.watch(fibraRepositoryProvider).getFibra();
});

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/repositories/tools/dispositivo_repository.dart';
import 'package:tvapp/domain/repositories/tools/dispositivo_repository_impl.dart';
import 'package:tvapp/domain/entities/tools/dispositivo.dart';
import 'package:tvapp/providers/tools/diagnostico_providers.dart';
import 'package:tvapp/core/services/local_device_service.dart';
import 'package:tvapp/providers/tools/tools_providers_core.dart';

final dispositivoRepositoryProvider = Provider<DispositivoRepository>((ref) {
  return DispositivoRepositoryImpl(ref.watch(apiClientProvider));
});

final dispositivosProvider = FutureProvider<List<Dispositivo>>((ref) async {
  try {
    final localDevices = await ref.watch(localDeviceServiceProvider).scanLocalDevices();
    if (localDevices.isNotEmpty) return localDevices;
  } catch (_) {}
  return ref.watch(dispositivoRepositoryProvider).getDispositivos();
});

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/repositories/tools/config_repository.dart';
import 'package:tvapp/domain/repositories/tools/config_repository_impl.dart';
import 'package:tvapp/domain/entities/tools/remote_config.dart';
import 'package:tvapp/providers/tools/diagnostico_providers.dart';
import 'package:tvapp/providers/tools/tools_providers_core.dart';

final configRepositoryProvider = Provider<ConfigRepository>((ref) {
  return ConfigRepositoryImpl(ref.watch(apiClientProvider));
});

final appRemoteConfigProvider = FutureProvider<AppRemoteConfig>((ref) async {
  return ref.watch(configRepositoryProvider).getConfig();
});

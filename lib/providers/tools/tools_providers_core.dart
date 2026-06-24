import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/domain/datasource/tools/tools_api_client.dart';
import 'package:tvapp/storage/secure_storage.dart';

/// Provider del cliente HTTP para el módulo Tools.
/// Depende de [secureStorageProvider] de B para inyectar el JWT automáticamente.
final apiClientProvider = Provider<ToolsApiClient>((ref) {
  // secureStorageProvider es AsyncNotifier — usamos requireValue para obtener el valor
  // sincrónico (ya fue inicializado en main.dart de B antes de que el router arranque).
  final storage = ref.watch(secureStorageProvider).requireValue;
  return ToolsApiClient(storage: storage);
});

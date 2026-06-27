import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/core/application/use_cases/settings/get_settings_use_case.dart';
import 'package:tvapp/core/domain/entities/settings/settings_entity.dart';
import 'package:tvapp/core/infraestructure/repositories/settings_http_repository.dart';

final settingsProvider = FutureProvider.autoDispose<Settings>((ref) async {
  final result = await GetSettingsUseCase(SettingsHttpRepository()).execute();
  return result.fold(
    (error) => throw Exception(error.message),
    (settings) => settings,
  );
});

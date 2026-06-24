import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tvapp/domain/entities/app_settings.entity.dart';
import 'package:tvapp/domain/repositories/app_settings.repository.dart';

part 'app_settings.state.g.dart';

@riverpod
class AppSettings extends _$AppSettings {
  final repository = AppSettingsRepository();

  @override
  Future<AppSettingsEntity?> build() {
    return repository.getRegisterSettings();
  }
}

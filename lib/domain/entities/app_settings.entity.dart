import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.entity.freezed.dart';
part 'app_settings.entity.g.dart';

@freezed
class AppSettingsEntity with _$AppSettingsEntity {
  const factory AppSettingsEntity({
    required String terms,
    required String policies,
    required String planFreeSelected,
  }) = _AppSettingsEntity;

  factory AppSettingsEntity.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsEntityFromJson(json);
}

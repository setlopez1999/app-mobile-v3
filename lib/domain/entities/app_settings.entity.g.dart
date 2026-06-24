// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsEntityImpl _$$AppSettingsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsEntityImpl(
      terms: json['terms'] as String,
      policies: json['policies'] as String,
      planFreeSelected: json['planFreeSelected'] as String,
    );

Map<String, dynamic> _$$AppSettingsEntityImplToJson(
        _$AppSettingsEntityImpl instance) =>
    <String, dynamic>{
      'terms': instance.terms,
      'policies': instance.policies,
      'planFreeSelected': instance.planFreeSelected,
    };

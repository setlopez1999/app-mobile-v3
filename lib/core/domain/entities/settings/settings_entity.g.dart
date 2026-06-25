// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Settings _$SettingsFromJson(Map<String, dynamic> json) => _Settings(
      terms: json['terms'] as String,
      policies: json['policies'] as String,
      planFreeSelected: json['planFreeSelected'] as String,
    );

Map<String, dynamic> _$SettingsToJson(_Settings instance) => <String, dynamic>{
      'terms': instance.terms,
      'policies': instance.policies,
      'planFreeSelected': instance.planFreeSelected,
    };

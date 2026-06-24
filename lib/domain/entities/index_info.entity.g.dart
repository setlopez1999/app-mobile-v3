// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndexInfoImpl _$$IndexInfoImplFromJson(Map<String, dynamic> json) =>
    _$IndexInfoImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      plan: json['plan'] as String,
      planId: json['planId'] as String,
    );

Map<String, dynamic> _$$IndexInfoImplToJson(_$IndexInfoImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'plan': instance.plan,
      'planId': instance.planId,
    };

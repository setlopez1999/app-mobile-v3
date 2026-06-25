// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkTargets _$NetworkTargetsFromJson(Map<String, dynamic> json) =>
    _NetworkTargets(
      googlePingTarget: json['googlePingTarget'] as String,
      ispPingTarget: json['ispPingTarget'] as String,
    );

Map<String, dynamic> _$NetworkTargetsToJson(_NetworkTargets instance) =>
    <String, dynamic>{
      'googlePingTarget': instance.googlePingTarget,
      'ispPingTarget': instance.ispPingTarget,
    };

_AppRemoteConfig _$AppRemoteConfigFromJson(Map<String, dynamic> json) =>
    _AppRemoteConfig(
      assetsVersion: json['assetsVersion'] as String,
      assetsCdnUrl: json['assetsCdnUrl'] as String,
      icons: Map<String, String>.from(json['icons'] as Map),
      networkTargets: NetworkTargets.fromJson(
          json['networkTargets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppRemoteConfigToJson(_AppRemoteConfig instance) =>
    <String, dynamic>{
      'assetsVersion': instance.assetsVersion,
      'assetsCdnUrl': instance.assetsCdnUrl,
      'icons': instance.icons,
      'networkTargets': instance.networkTargets,
    };

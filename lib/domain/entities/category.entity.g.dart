// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryEntityImpl _$$CategoryEntityImplFromJson(Map<String, dynamic> json) =>
    _$CategoryEntityImpl(
      adulto: const BinaryToBooleanConverter()
          .fromJson((json['adulto'] as num).toInt()),
      background: json['background'] as String,
      card: json['card'] as String,
      cardIos: json['card_ios'] as String,
      especial: (json['especial'] as num).toInt(),
      icono: json['icono'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      ott: (json['ott'] as num).toInt(),
      predefinido: json['predefinido'] as String,
    );

Map<String, dynamic> _$$CategoryEntityImplToJson(
        _$CategoryEntityImpl instance) =>
    <String, dynamic>{
      'adulto': const BinaryToBooleanConverter().toJson(instance.adulto),
      'background': instance.background,
      'card': instance.card,
      'card_ios': instance.cardIos,
      'especial': instance.especial,
      'icono': instance.icono,
      'id': instance.id,
      'name': instance.name,
      'ott': instance.ott,
      'predefinido': instance.predefinido,
    };

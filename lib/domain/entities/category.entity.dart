// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tvapp/domain/converters/binary_to_boolean.converter.dart';

part 'category.entity.freezed.dart';

part 'category.entity.g.dart';

/// Category
@freezed
class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    @BinaryToBooleanConverter() required bool adulto,
    required String background,
    required String card,
    @JsonKey(name: 'card_ios') required String cardIos,
    required int especial,
    required String icono,
    required String id,
    required String name,
    required int ott,
    required String predefinido,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);

  factory CategoryEntity.Ohter() => const CategoryEntity(
        adulto: false,
        background: '',
        card: '',
        id: 'others',
        name: 'Otros',
        cardIos: '',
        especial: 0,
        icono: '',
        ott: 0,
        predefinido: '',
      );
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tvapp/domain/entities/epg.entity.dart';

part 'program_guide.entity.freezed.dart';
part 'program_guide.entity.g.dart';

@freezed
class TvGuideEntity with _$TvGuideEntity {
  const factory TvGuideEntity({
    @JsonKey(name: 'cn_id') required int id,
    required String nombre,
    required String descripcion,
    required int numero,
    required String imagen,
    required int adulto,
    required int cdn,
    required List<EpgEntity> epg,
    @JsonKey(name: 'category_id') required int categoryId,
  }) = _TvGuideEntity;

  factory TvGuideEntity.fromJson(Map<String, dynamic> json) =>
      _$TvGuideEntityFromJson(json);
}

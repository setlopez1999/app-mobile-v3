import 'package:freezed_annotation/freezed_annotation.dart';

part 'epg.entity.freezed.dart';
part 'epg.entity.g.dart';

@freezed
class EpgEntity with _$EpgEntity {
  const factory EpgEntity({
    required String anterior,
    required String channel,
    required String desc,
    @JsonKey(name: 'fecha_fin') required int fechaFin,
    @JsonKey(name: 'fecha_ini') required int fechaIni,
    required int run,
    required String siguiente,
    required String titulo,
  }) = _EpgEntity;

  factory EpgEntity.fromJson(Map<String, dynamic> json) =>
      _$EpgEntityFromJson(json);
}

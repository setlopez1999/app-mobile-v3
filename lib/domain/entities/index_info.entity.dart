import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tvapp/domain/entities/category.entity.dart';

part 'index_info.entity.freezed.dart';
part 'index_info.entity.g.dart';

/// IndexInfo entity
@freezed
class IndexInfo with _$IndexInfo {
  const factory IndexInfo({
    required List<CategoryEntity> categories,
    required String plan,
    required String planId,
  }) = _IndexInfo;

  factory IndexInfo.fromJson(Map<String, dynamic> json) =>
      _$IndexInfoFromJson(json);
}
